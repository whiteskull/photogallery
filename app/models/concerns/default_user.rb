module DefaultUser
  extend ActiveSupport::Concern

  included do
    validates :user_id, presence: true

    before_validation :set_current_user
  end

  private

  def set_current_user
    self.user_id = current_user.try(:id) unless current_user.try(:is_admin?)
  end
end