module BitCore
  # A section of an application.
  class Tool < ActiveRecord::Base
    has_many :content_modules,
             class_name: "BitCore::ContentModule",
             foreign_key: :bit_core_tool_id,
             inverse_of: :tool,
             dependent: :destroy

    validates :title, :position, presence: true
    validates :position, uniqueness: true
  end
end
