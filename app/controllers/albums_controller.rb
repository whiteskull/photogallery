class AlbumsController < ApplicationController
  def index
    @albums = Album.visible
    @albums = @albums.search(params[:query]) if params[:query].present?
  end

  def show
    @album = Album.find(params[:id])
    params[:theme] ||= 'twelve'
  end
end
