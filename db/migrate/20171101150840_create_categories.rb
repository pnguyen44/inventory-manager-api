class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
