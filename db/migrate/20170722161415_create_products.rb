class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :no_of_stock
      t.string :size

      t.timestamps
    end
  end
end
