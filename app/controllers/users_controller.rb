class UsersController < ApplicationController
  before_action :destroy_check, only: :destroy

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url, notice: "ユーザーを削除しました。"
  end

  private

    def destroy_check
    end

end