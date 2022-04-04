class AddingPriceForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_column :frames, :price_id, :integer
    add_foreign_key :frames, :prices
    add_column :lenses, :price_id, :integer
    add_foreign_key :lenses, :prices
  end
end
