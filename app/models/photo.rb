class Photo < ActiveRecord::Base
  include DefaultUser

  cattr_accessor :current_user

  belongs_to :album
  belongs_to :user

  mount_uploader :image, PhotoUploader

  validates :album_id, presence: true
end
