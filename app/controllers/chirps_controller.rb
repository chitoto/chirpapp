class ChirpsController < ApplicationController
  def index
  end

  def new
    @chirp = Chirp.new
  end

  def create
    Chirp.create(title: params[:chirp][:title], content: params[:chirp][:content])
    redirect_to "/chirps/new"
  end

end
