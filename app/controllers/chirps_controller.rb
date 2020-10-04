class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.all
  end

  def new
    @chirp = Chirp.new
  end

  def create
    Chirp.create(chirp_params)
    redirect_to "/chirps/new"
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  private
  def chirp_params
    params.require(:chirp).permit(:title, :content)
  end
end
