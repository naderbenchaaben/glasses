class AddingForeignKeyToBasket < ActiveRecord::Migration[6.0]
  def change
    rename_column :baskets, :glasse_id, :glass_id
    add_foreign_key :baskets, :glasses
  end
end
