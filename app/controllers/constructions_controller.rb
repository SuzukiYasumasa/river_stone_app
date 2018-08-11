class ConstructionsController < ApplicationController
  before_action :set_construction, only: [:update, :destroy]

  def index
    @construction = Construction.new
    @constructions = Construction.all
  end

  def create
    @construction = Construction.new(construction_params)
    if @construction.save
      redirect_to constructions_url, notice: "工事名を追加しました"
    else
      @constructions = Construction.all
      render :index
    end
  end

  def update
    unless @construction.update(construction_params)
      @construction.name = Construction.find(params[:id]).name
    end
  end

  def destroy
    @construction.destroy
    redirect_to constructions_url, notice: "工事名を削除しました"
  end

  private
    def set_construction
      @construction = Construction.find(params[:id])
    end

    def construction_params
      params.require(:construction).permit(:name)
    end
end
