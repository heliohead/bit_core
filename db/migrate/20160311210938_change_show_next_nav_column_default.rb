class ChangeShowNextNavColumnDefault < ActiveRecord::Migration
  def change
    change_column_default :bit_core_content_providers, :show_next_nav, false
    change_column_null :bit_core_content_providers, :show_next_nav, false
  end
end
