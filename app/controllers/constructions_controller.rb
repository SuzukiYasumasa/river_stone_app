class ConstructionsController < ApplicationController
  before_action :set_construction, only: [:edit, :update, :destroy]

  def index
    @construction = Construction.new
    @constructions = Construction.all
  end

  def edit
  end

  def create
    @construction = Construction.new(construction_params)
    if @construction.save
      redirect_to constructions_url
    else
      @constructions = Construction.all
      render :index
    end
  end

  def update
    if @construction.update(construction_params)
      redirect_to constructions_url
    else
      render :edit
    end
  end

  def destroy
    @construction.destroy
    redirect_to constructions_url
  end

  private
    def set_construction
      @construction = Construction.find(params[:id])
    end

    def construction_params
      params.require(:construction).permit(:name)
    end
end
