class Album < ActiveRecord::Base
  include DefaultUser

  cattr_accessor :current_user

  mount_uploader :image, AlbumUploader

  belongs_to :user

  scope :visible, -> { where(is_visible: true) }

  validates :title, presence: true
end
