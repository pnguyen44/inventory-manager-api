# frozen_string_literal: true
class Category < ApplicationRecord
  belongs_to :user
  has_many :items
  # validates :name, :user, presence: true
  validates_uniqueness_of :name, scope: :user_id, presence: true
end
