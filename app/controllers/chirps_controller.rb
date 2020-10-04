class ChirpsController < ApplicationController
  def index
  end

  def new
    @chirp = Chirp.new
  end

  def create
    Chirp.create(params[:chirp])
    redirect_to "/chirps/new"
  end

end
