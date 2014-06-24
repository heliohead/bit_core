module BitCore
  # Modeled after the presenter pattern. Ties data layer to view layer.
  class ContentProvider < ActiveRecord::Base
    belongs_to :content_module,
               class_name: "BitCore::ContentModule",
               foreign_key: :bit_core_content_module_id,
               inverse_of: :content_providers
    belongs_to :source_content, polymorphic: true

    validates :content_module,
              :type,
              :bit_core_content_module_id,
              :position,
              presence: true
    validates :position,
              numericality: { greater_than_or_equal_to: 1 },
              uniqueness: { scope: :bit_core_content_module_id }
    validates :show_next_nav, inclusion: { in: [true, false] }
    validate :template_path_exists
    validate :data_class_exists
    validate :data_attributes_exist

    serialize :data_attributes
    serialize :locals

    delegate :context, to: :content_module, prefix: false

    def exists?(_position)
      false
    end

    def data_class
      data_class_name.constantize
    rescue NameError
      nil
    end

    # compatibility method
    def show_nav_link?
      show_next_nav
    end

    private

    def template_path_exists
      path = File.join(Rails.root, "app", "views", template_path || "")
      return if Dir.exist?(path)

      errors.add(:template_path, "not found at #{ path }")
    end

    def data_class_exists
      return unless data_class_name && !data_class

      errors.add(:data_class_name,
                 "unable to find class '#{ data_class_name }'")
    end

    def data_attributes_exist
      return unless data_attributes
      attribute_names = data_class.try(:attribute_names) || []
      return if data_attributes.all? { |a| attribute_names.include?(a.to_s) }

      errors.add(:data_attributes, "must be attributes on the model class")
    end
  end
end
