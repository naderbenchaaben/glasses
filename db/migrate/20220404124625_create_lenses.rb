class CreateLenses < ActiveRecord::Migration[6.0]
  def change
    create_table :lenses do |t|

      t.timestamps
    end
  end
end
