class ChirpsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update]
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
  end

  def edit
  end

  def update
    if @chirp.update(chirp_params)
      redirect_to chirps_path, notice: "編集しました！"
    else
      render :edit
    end
  end

  private
  def chirp_params
    params.require(:chirp).permit(:title, :content)
  end

  def set_blog
    @chirp = Chirp.find(params[:id])
  end
end
