module BitCore
  # A section of an application.
  class Tool < ActiveRecord::Base
    has_many :content_modules,
             class_name: "BitCore::ContentModule",
             foreign_key: :bit_core_tool_id,
             inverse_of: :tool,
             dependent: :destroy

    validates :title, :position, presence: true
    validates :position,
              uniqueness: true,
              numericality: { greater_than_or_equal_to: 0 }

    def add_module(title)
      content_modules.create(title: title, position: last_position + 1)
    end

    private

    def last_position
      content_modules.order(:position).last.try(:position) || 0
    end
  end
end
