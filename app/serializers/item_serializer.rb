class ItemSerializer < ActiveModel::Serializer
  attributes :id, :editable, :name, :description, :currentQuanity, :alertQuanity, :quanityPurchased, :inShoppingList, :category_id
  # has_one :user
  # has_one :category
  def editable
    scope == object.user
  end
end
