class Place < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :name, :continent, :level_of_remoteness, :photo, presence: true

  #this is for upload
  mount_uploader :photo, PhotoUploader


  def self.continents
    pluck(:continent).uniq.sort
  end

  def self.level_of_remoteness
    ["remote", "very remote", "extremely remote"]
  end
end
