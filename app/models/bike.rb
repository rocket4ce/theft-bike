class Bike < ActiveRecord::Base
  validates :color,:brand, :description,:ring, :photo , presence: true
  validates :description, length: {minimum: 140}
  validates :ring,  numericality: { greater_than: 0 }
end
