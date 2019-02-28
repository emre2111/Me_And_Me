class Place < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  #this is for upload
  mount_uploader :photo, PhotoUploader


  def self.continents
    pluck(:continent).uniq.sort
  end

  def self.level_of_remoteness
    pluck(:level_of_remoteness).uniq.sort
  end
end
