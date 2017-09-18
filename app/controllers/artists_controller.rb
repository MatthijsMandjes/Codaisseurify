class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :new, :destroy]

  def index
   @artists = Artist.all
  end
  def show
    @song = Song.new
    @songs = @artist.songs
  end
  def new
    @artist = Artist.find(params[:id])
  end

  def destroy
    @artist.destroy
    redirect_to root_path, notice: "Artist succesfully removed!"
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
