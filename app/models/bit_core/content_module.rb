module BitCore
  # A logical unit of content, possibly containing mixed provider types.
  class ContentModule < ActiveRecord::Base
    belongs_to :tool,
               class_name: "BitCore::Tool",
               foreign_key: :bit_core_tool_id
    has_many :content_providers,
             class_name: "BitCore::ContentProvider",
             foreign_key: :bit_core_content_module_id,
             inverse_of: :content_module,
             dependent: :destroy

    validates :title, :tool, :position, presence: true
    validates :position,
              numericality: { greater_than_or_equal_to: 1 },
              uniqueness: { scope: :bit_core_tool_id }

    def provider(position)
      content_providers.where(position: position).first ||
        ContentProviders::Null.new(self, position)
    end

    def provider_exists?(position)
      content_providers.exists?(position: position)
    end
  end
end
