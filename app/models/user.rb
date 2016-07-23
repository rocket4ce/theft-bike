class User < ActiveRecord::Base

  #Usaremos friendly_id para las rutas amigables
  extend FriendlyId
  friendly_id :username, use: :slugged

  #CarrierWave para subir archivos
  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #Validaciones
  validates :username, uniqueness: true
  #asociaciones
  #theft = robos
  #stole = robo
  has_many :bikes
  has_many :theft
end
