class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|

      t.timestamps
      t.integer:glass_id
    end
    add_foreign_key :orders, :glasses
  end
end
