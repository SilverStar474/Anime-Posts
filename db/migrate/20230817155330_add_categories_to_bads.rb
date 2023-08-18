class AddCategoriesToBads < ActiveRecord::Migration[7.0]
  def change
    add_column :bads, :categories, :string
  end
end
