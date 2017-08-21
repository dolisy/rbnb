class Book < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :user, presence: true
  validates :title, presence: true
end
