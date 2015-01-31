class AddIsVizToContentModules < ActiveRecord::Migration
  def change
    add_column :bit_core_content_modules, :is_viz, :boolean, null: false, default: false
  end
end
