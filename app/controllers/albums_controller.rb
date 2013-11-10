class AlbumsController < ApplicationController
  def index
    @albums = Album.visible.order('date DESC, created_at DESC')
    @albums = @albums.search(params[:query]) if params[:query].present?
  end

  def show
    @album = Album.find(params[:id])
    params[:theme] ||= 'twelve'
  end
end
