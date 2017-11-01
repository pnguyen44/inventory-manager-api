class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.number :currentQuanity
      t.number :alertQuanity
      t.number :quanityPurchased
      t.boolean :inShoppingList
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
