class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update]
  before_action :admin_user, only: [:edit, :update]

  def edit
  end

  def update
  	if @user.update(user_params)
  		flash[:success] = "Updated"
  		render :edit
  	else
      flash[:danger] = "Need Information"
  		render :edit
  	end
  end

  private

  	def set_user
  		@user = User.find(params[:id])
  	end

  	def user_params
  		params.require(:user).permit(:email, :phone, :email_support, :password, :password_confirmation)
  	end
end
