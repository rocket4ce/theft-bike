class Bike < ActiveRecord::Base
  #CarrierWave para subir archivos
  mount_uploader :photo, AvatarUploader

  #validaciones
  validates :color,:brand, :description,:ring, :photo , presence: true
  validates :description, length: {minimum: 1}
  validates :ring,  numericality: { greater_than: 0 }

  #asociaciones
  belongs_to :user
end
