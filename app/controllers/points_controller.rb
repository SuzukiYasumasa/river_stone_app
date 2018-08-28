class PointsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_point, only: [:show, :edit, :update, :destroy]

  def index
    @points = Point.all
  end

  def show
  end

  def new
    @point = Point.new(name: "浜松駅", lng: 137.734933, lat: 34.703458, release: false)
  end

  def edit
  end

  def create
    @point = Point.new(point_params)
    if @point.save
      redirect_to @point, notice: '地点情報を登録しました'
    else
      render :new
    end
  end

  def update
    if @point.update(point_params)
      redirect_to @point, notice: '地点情報を更新しました'
    else
      render :edit
    end
  end

  def destroy
    @point.destroy
    redirect_to points_url, notice: '地点情報を削除しました'
  end

  private
    def set_point
      @point = Point.find(params[:id])
    end

    def point_params
      params.require(:point).permit(:name, :lng, :lat, :construction_id, :release)
    end
end
