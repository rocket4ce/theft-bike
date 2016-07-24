class Stole < ActiveRecord::Base
  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  belongs_to :user
  belongs_to :bike
  has_many :avistamientos
  #theft = robos
  #stole = robo
end
