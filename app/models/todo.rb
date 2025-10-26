class Todo < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :categorizations, dependent: :destroy
  has_many :categories, through: :categorizations
end
