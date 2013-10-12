class AddAutoplayToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :autoplay, :integer
  end
end
