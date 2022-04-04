class CreateFrames < ActiveRecord::Migration[6.0]
  def change
    create_table :frames do |t|

      t.timestamps
    end
  end
end
