class Video < ActiveRecord::Base
  include DefaultUser

  cattr_accessor :current_user

  belongs_to :album

  validates :link, presence: true, format:  { with: /vimeo|youtube/ }

  before_save :set_title

  private

  def set_title
    self.title = link unless title?
  end
end
