class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :background
    end
  end
end
