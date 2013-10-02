class Album < ActiveRecord::Base
  include DefaultUser

  cattr_accessor :current_user

  mount_uploader :image, AlbumUploader

  belongs_to :user
  has_many :videos

  scope :visible, -> { where(is_visible: true) }
  scope :search, lambda { |query| where(self.arel_table[:title].matches_any(query.split(' ').map { |word| "%#{word}%" })) }

  validates :title, presence: true
  validates :image, presence: true

  private
end
