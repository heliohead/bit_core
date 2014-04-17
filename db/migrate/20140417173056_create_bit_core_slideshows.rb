class CreateBitCoreSlideshows < ActiveRecord::Migration
  def change
    create_table :bit_core_slideshows do |t|
      t.string :title, null: false

      t.timestamps
    end
  end
end
