class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :current_quantity
      t.integer :alert_quantity
      t.integer :quantity_purchased
      t.boolean :in_order_list
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
