class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :description, :age, :diet, :origin, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
end
