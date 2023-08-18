class AddTypeToBad < ActiveRecord::Migration[7.0]
  def change
    add_column :bads, :type, :string
  end
end
