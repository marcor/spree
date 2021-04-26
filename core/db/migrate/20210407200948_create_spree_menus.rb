class CreateSpreeMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_menus do |t|
      t.column :name, :string
      t.column :unique_code, :string, null: false

      t.timestamps
    end

    add_index :spree_menus, :name
    add_index :spree_menus, :unique_code, unique: true
  end
end