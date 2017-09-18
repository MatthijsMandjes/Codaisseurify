class Api::ArtistsController < ApplicationController
  before_action :set_artist, only: [:destroy]
  def destroy
    @artist.destroy
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def show
    render status: 200, json: {
      songs: Artist.find(params[:id])
    }.to_json
  end
end
