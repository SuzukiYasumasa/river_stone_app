class PointsController < ApplicationController
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

    respond_to do |format|
      if @point.save
        format.html { redirect_to @point, notice: 'Point was successfully created.' }
        format.json { render :show, status: :created, location: @point }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @point.update(point_params)
        format.html { redirect_to @point, notice: 'Point was successfully updated.' }
        format.json { render :show, status: :ok, location: @point }
      else
        format.html { render :edit }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @point.destroy
    respond_to do |format|
      format.html { redirect_to points_url, notice: 'Point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_point
      @point = Point.find(params[:id])
    end

    def point_params
      params.require(:point).permit(:name, :lng, :lat, :construction_id, :release)
    end
end
