class Album < ActiveRecord::Base
  include DefaultUser

  cattr_accessor :current_user

  belongs_to :user
  has_many :photos

  validates :title, presence: true
end
