class AddArmIdToBitCoreSlideshows < ActiveRecord::Migration
  def change
    add_column :bit_core_slideshows, :arm_id, :integer, null: false

    reversible do |dir|
      dir.up do
        # add foreign key constaint
        execute <<-SQL
          ALTER TABLE bit_core_slideshows
            ADD CONSTRAINT fk_bit_core_slideshows_arms
            FOREIGN KEY (arm_id)
            REFERENCES arms(id)
        SQL
      end

      dir.down do
        # remove foreign key constaint
        execute <<-SQL
          ALTER TABLE bit_core_slideshows
            DROP CONSTRAINT fk_bit_core_slideshows_arms
        SQL
      end
    end
  end
end
