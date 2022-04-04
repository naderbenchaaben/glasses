class AddingFieldToFrames < ActiveRecord::Migration[6.0]
  def change
    add_column :frames, :name, :string
    add_column :frames, :description, :text
    add_column :frames, :status, :boolean
    add_column :frames, :stock, :integer
  end
end
