class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :editable, :user_id

  def editable
    scope == object.user
  end
end
