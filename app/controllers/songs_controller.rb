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
    respond_to do |format|
      if @song.save
        format.html { redirect_to artist_path(@artist.id) }
        format.json { render :songs, status: :created }
      else
        format.html { render :index }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
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
      respond_to do |format|
        format.html { redirect_to todos_url, notice: 'Todo was successfully destroyed.' }
        format.json { head :no_content }
      end
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
