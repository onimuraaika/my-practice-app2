class AddColumnsToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :is_active, :boolean, default: true, null: false
    add_column :customers, :profile_image_id, :string
  end
end
