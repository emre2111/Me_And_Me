class Place < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, :continent, :level_of_remoteness, :photo, presence: true

  def self.continents
    pluck(:continent).uniq.sort
  end

  def self.level_of_remoteness
    pluck(:level_of_remoteness).uniq.sort
  end
end
