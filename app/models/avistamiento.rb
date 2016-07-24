class Avistamiento < ActiveRecord::Base
  mount_uploader :photo, PhotoAvistamientoUploader
  geocoded_by :address
  after_validation :geocode
  belongs_to :bike
  belongs_to :user
  belongs_to :stole
end
