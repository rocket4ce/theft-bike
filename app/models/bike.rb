class Bike < ActiveRecord::Base
  validates :color,:brand, :description,:ring, :photo , presence: true
  validates :description, length: {minimum: 1}
  validates :ring,  numericality: { greater_than: 0 }

  belongs_to :user
end
