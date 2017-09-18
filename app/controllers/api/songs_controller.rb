class Api::SongsController < ApplicationController
  before_action :set_song, only: [:destroy]
  def index
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end
  def show
    render status: 200, json: {
      songs: Song.find(params[:id])
    }.to_json
  end
  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.new(song_params.merge(artist_id: params[:artist_id]))

    if @song.save
     render status: 200, json: {
       song: @song
     }.to_json
   else
     render status: 422, json: @song.errors.to_json
   end
  end
  def destroy
    @song.destroy
  end


  def set_song
    @song = Song.find(params[:id])
  end
  def song_params
     params.require(:song).
     permit(:name, :price, :active)
  end
end
