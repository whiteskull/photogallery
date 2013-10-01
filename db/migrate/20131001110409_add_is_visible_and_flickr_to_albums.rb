class AddIsVisibleAndFlickrToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :is_visible, :boolean, default: true
    add_column :albums, :flickr, :string
  end
end
