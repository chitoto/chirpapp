class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.all
  end

  def new
    @chirp = Chirp.new
  end

  def create
    @chirp = Chirp.new(chirp_params)
    if @chirp.save
      redirect_to chirps_path, notice: "作成しました！"
    else
      render :new
    end
  end

  def show
    @chirp = Chirp.find(params[:id])
  end

  private
  def chirp_params
    params.require(:chirp).permit(:title, :content)
  end
end
