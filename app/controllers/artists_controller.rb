 
 
class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @artists = Artist.all
  end 

  def show
  end 

  def new 
    @artist = Artist.new
  end 

  def edit
  end 

  def create
    @artist = Artist.new(artist_params)
    @artist.save
    ArtistMailer.join_team_email(@artist).deliver_later
    respond_with(@artist)
  end 

  def update
    @artist.update(artist_params)
    flash[:notice] = 'Artist was successfully updated.'
    respond_with(@artist)
  end 

  def destroy
    @artist.destroy
    redirect_to artists_url, notice: 'Artist was successfully destroyed.'
  end 

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end 

    def artist_params
      params.require(:artist).permit(:name, :email, :drone, :phone, :location, :distance) 
    end 
end
 
