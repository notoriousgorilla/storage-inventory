class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.belongs_to :location, index: true
      t.belongs_to :furniture, index: true
      t.timestamps
    end
  end
end
