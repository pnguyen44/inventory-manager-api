class Item < ApplicationRecord
  belongs_to :category
  has_one :user, through: :category
  validates :name, presence: true
end
