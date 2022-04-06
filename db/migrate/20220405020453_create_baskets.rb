class CreateBaskets < ActiveRecord::Migration[6.0]
  def change
    create_table :baskets do |t|

      t.timestamps
      t.integer:glasse_id
    end
    
  end
end
