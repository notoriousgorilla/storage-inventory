class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text :item_name
      t.integer :item_count
      t.timestamps
    end
  end
end
