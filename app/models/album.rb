class Album < ActiveRecord::Base
  include DefaultUser

  cattr_accessor :current_user

  mount_uploader :image, AlbumUploader

  belongs_to :user
  has_many :videos


  validates :title, presence: true
  validates :image, presence: true

  def self.visible
    if current_user.try(:is_admin?)
      all
    else
     where(is_visible: true)
    end
  end

  private

  def self.search(query)
    query = query.split(' ').map { |word| "%#{word}%" }
    if query.count == 1 && query.first[1..-2].to_i > 0
      date = Time.parse("01.01.#{query.first[1..-2].to_i}")
      where(date: date.at_beginning_of_year..date.at_end_of_year)
    else
      where(self.arel_table[:title].matches_any(query).or(self.arel_table[:description].matches_any(query)))
    end
  end
end
