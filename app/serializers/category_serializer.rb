# frozen_string_literal: true

class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :editable, :user_id, :items

  def editable
    scope == object.user
  end

  def items
    object.items.pluck(:id)
  end
end
