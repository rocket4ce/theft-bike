class Bike < ActiveRecord::Base
  validates :color,:brand, :description,:ring, :photo , presence: true
end
