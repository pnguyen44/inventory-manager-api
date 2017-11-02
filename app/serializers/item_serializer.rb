class ItemSerializer < ActiveModel::Serializer
  attributes :id, :editable, :name, :description, :current_quantity, :alert_quantity, :quantity_purchased, :in_order_list, :category_id
  # has_one :user
  # has_one :category
  def editable
    scope == object.user
  end
end
