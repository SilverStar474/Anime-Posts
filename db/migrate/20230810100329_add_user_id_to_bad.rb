class AddUserIdToBad < ActiveRecord::Migration[7.0]
  def change
    add_column :bads, :user_id, :integer
    add_index :bads, :user_id
  end
end
