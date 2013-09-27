class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :image, null: false
      t.references :album, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
