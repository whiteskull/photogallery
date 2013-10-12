class Setting < ActiveRecord::Base

  mount_uploader :background, BackgroundUploader

  cattr_accessor :current_user

  before_destroy :prevent_delete
  before_create :prevent_create

  private

  def prevent_delete
    false
  end

  def prevent_create
    if current_user.try(:is_admin?)
      false
    else
      true
    end
  end

end

