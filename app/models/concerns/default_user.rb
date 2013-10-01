module DefaultUser
  extend ActiveSupport::Concern

  included do
    validates :user_id, presence: true

    before_validation :set_current_user
  end

  private

  def set_current_user
    if current_user.try(:is_admin?)
      self.user_id = current_user.try(:id) unless self.user_id
    else
      self.user_id = current_user.try(:id)
    end
  end
end