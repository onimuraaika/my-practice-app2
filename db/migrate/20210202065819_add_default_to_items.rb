class AddDefaultToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :price, :integer, :default => 0
  end
end
