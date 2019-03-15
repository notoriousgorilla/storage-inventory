class CreateFurnitures < ActiveRecord::Migration[5.2]
  def change
    create_table :furnitures do |t|
      t.text :name
      t.integer :A2
      t.integer :BC2
      t.integer :B2F
      t.integer :BU50
      t.integer :BU60
      t.integer :ABU1
      t.integer :Fjellager
      t.integer :Stollager
      t.string :image
      t.text :description
      t.integer :storage_count
      t.timestamps
    end
  end
end
