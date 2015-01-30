class AddTypeToTools < ActiveRecord::Migration
  def change
    add_column :bit_core_tools, :type, :string
  end
end
