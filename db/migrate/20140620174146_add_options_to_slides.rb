class AddOptionsToSlides < ActiveRecord::Migration
  def change
    add_column :bit_core_slides, :options, :text
  end
end
