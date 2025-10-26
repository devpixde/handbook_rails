class Category < ApplicationRecord
  has_many :categorizations, dependent: :destroy
  has_many :todos, through: :categorizations
end
