class Video < ActiveRecord::Base
  include DefaultUser

  cattr_accessor :current_user

  belongs_to :album

  validates :link, presence: true
end
