class User < ApplicationRecord
  has_many :likes
  has_many :hotels, through: :likes

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
