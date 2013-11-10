class RemoveBackgroundFromSettings < ActiveRecord::Migration
  def up
    remove_column :settings, :background
  end
  def down
    add_column :settings, :background, :string
  end
end
