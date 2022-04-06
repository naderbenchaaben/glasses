class AddingStockToLenses < ActiveRecord::Migration[6.0]
  def change
    add_column :lenses, :stock, :integer
  end
end
