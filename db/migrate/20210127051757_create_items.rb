class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :image_id, null: false
      t.string :introduction, null: false
      t.integer :price, null: false
      t.integer :purpose, null: false, default: 0
      t.integer :for_someone, null: false, default: 0
      t.integer :genger, null: false, default: 0
      t.integer :age, null: false, default: 0
      t.timestamps
    end
  end
end
