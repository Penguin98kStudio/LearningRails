class ChangeUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :first_name
    add_column :users, :last_name, :string
    add_column :users, :house_no, :string
    add_column :users, :block, :string
    add_column :users, :area, :string
    add_column :users, :city, :string
    add_column :users, :country, :string

  end
end
