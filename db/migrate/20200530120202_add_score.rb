class AddScore < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first, :integer
    add_column :users, :second, :integer
    add_column :users, :third, :integer
    add_column :users, :fourth, :integer
  end
end
