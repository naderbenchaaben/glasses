class AddingFieldToLenses < ActiveRecord::Migration[6.0]
  def change
    add_column :lenses, :name, :string
    add_column :lenses, :description, :text
    add_column :lenses, :presecription_type, :string
    add_column :lenses, :lense_type, :string
  end
end
