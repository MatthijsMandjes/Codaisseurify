class SongsController < ApplicationController
  before_action :set_artist, only: [:edit, :new, :create]
  before_action :set_song, only: [:edit, :destroy, :update]

  def index

  end

  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.new(song_params.merge(artist_id: params[:artist_id]))
    if @song.save
      redirect_to artist_path(@artist.id), notice: "Song succesfully added!"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @song.update_attributes(song_params)
      redirect_to artist_path(@song.artist_id)
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_path(@song.artist_id)
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  private

  def song_params
     params.require(:song).
     permit(:name, :price, :active)
  end


end
