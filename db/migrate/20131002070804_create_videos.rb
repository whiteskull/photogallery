class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :link
      t.string :title
      t.text :description
      t.references :album, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
