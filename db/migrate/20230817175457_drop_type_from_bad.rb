class DropTypeFromBad < ActiveRecord::Migration[7.0]
  def change
    remove_column :bads,  :type
  end
end
