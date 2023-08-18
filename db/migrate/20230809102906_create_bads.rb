class CreateBads < ActiveRecord::Migration[7.0]
  def change
    create_table :bads do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
