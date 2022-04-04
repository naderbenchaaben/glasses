class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|

      t.timestamps
      t.float:USD
      t.float:GRP
      t.float:EUR
      t.float:JOD
      t.float:JPY
    end
  end
end
