class AlbumsController < ApplicationController
  def index
    @albums = Album.visible
    if params[:query].present?
      @albums = @albums.search(params[:query])
    end
  end

  def show
    @album = Album.find(params[:id])
    params[:theme] ||= 'twelve'
  end
end
