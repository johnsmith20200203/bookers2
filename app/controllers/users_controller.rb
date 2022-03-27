class UsersController < ApplicationController
  def index
  end
  def show
    # WARNING: user詳細画面ではcurrent_userではなく対象のUser情報を@userに上書きしている
    @user = User.find(params[:id])
  end
end
