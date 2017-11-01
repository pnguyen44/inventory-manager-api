class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :currentQuantity
      t.integer :alertQuantity
      t.integer :quantityPurchased
      t.boolean :inOrderList
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
