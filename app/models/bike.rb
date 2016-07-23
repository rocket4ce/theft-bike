class Bike < ActiveRecord::Base
  #CarrierWave para subir archivos
  mount_uploader :photo, AvatarUploader

  #validaciones
  validates :color,:brand, :description,:ring, presence: true
  validates :description, length: {minimum: 1}
  validates :ring,  numericality: { greater_than: 0 }

  #asociaciones
  #theft = robos
  #stole = robo
  belongs_to :user
  has_many :theft
end
