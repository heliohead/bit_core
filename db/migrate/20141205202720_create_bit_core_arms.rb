class CreateBitCoreArms < ActiveRecord::Migration
  def change
    create_table :arms do |t|
      t.string :title
      t.boolean :is_social

      t.timestamps
    end
  end
end
