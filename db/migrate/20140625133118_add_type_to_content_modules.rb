class AddTypeToContentModules < ActiveRecord::Migration
  def change
    add_column :bit_core_content_modules, :type, :string
  end
end
