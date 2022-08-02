class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :description, :age, :diet, :origin, presence: true
  validates :name, uniqueness: true
end
