class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    # WARNING: user詳細画面ではcurrent_userではなく対象のUser情報を@userに上書きしている
    @user = User.find(params[:id])
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to user_url(@user), notice: "You have updated user successfully."
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
