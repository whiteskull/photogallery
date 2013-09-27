class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :description
      t.string :image
      t.references :user, index: true

      t.timestamps
    end
  end
end
