class Item < ApplicationRecord
  belongs_to :category
  has_one :user, through: :category
  validates :name, :description, :currentQuanity, :alertQuanity, :quanityPurchased, :inShoppingList, presence: true
end
