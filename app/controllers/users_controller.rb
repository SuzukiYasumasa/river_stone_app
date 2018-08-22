class UsersController < ApplicationController
  before_action :destroy_preparation, only: :destroy

  def index
    @users = User.all
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: "ユーザーを削除しました。"
  end

  private

  def destroy_preparation
    @user = User.find(params[:id])
    redirect_to users_url, alert: "管理者を削除することはできません" if @user.admin
  end

end