module BitCore
  # Modeled after the presenter pattern. Ties data layer to view layer.
  class ContentProvider < ActiveRecord::Base
    belongs_to :content_module,
               class_name: "BitCore::ContentModule",
               foreign_key: :bit_core_content_module_id,
               inverse_of: :content_providers

    validates :type, :bit_core_content_module_id, :position, presence: true
    validates :position,
              numericality: { greater_than_or_equal_to: 1 },
              uniqueness: { scope: :bit_core_content_module_id }
  end
end
