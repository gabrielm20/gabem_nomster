#description: string

class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: { minimum: 3 }
  validates :name, :address, :description, presence: true
  geocoded_by :address
  after_validation :geocode
end

