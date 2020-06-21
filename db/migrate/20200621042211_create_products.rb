class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :merchant_name
      t.integer :price
      t.text :description
      t.string :size, array: true
      t.text :colour, array: true

      t.timestamps
    end
  end
end
