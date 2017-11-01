class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :editable, :user_id, :items

  def editable
    scope == object.user
  end
end
