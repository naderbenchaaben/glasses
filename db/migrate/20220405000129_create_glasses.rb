class CreateGlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :glasses do |t|

      t.timestamps
      t.integer:frame_id
      t.integer:lense_id
      t.string:currency
      t.float:price
    end
    add_foreign_key :glasses, :frames
    add_foreign_key :glasses, :lenses
  end
end
