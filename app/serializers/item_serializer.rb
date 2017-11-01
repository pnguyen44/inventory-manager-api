class ItemSerializer < ActiveModel::Serializer
  attributes :id, :editable, :name, :description, :currentQuantity, :alertQuantity, :quantityPurchased, :inOrderList, :category_id
  # has_one :user
  # has_one :category
  def editable
    scope == object.user
  end
end
