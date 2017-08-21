class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :user, presence: true
  validates :book, presence: true

  # add uniqueness for scope user, book, pickupdate and returndate
end
