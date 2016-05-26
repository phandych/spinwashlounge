class LocationsController < ApplicationController
  before_action :admin_user, only: [:edit, :update]

  def edit
  	@user = User.find(params[:id])
  	@location = Location.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@location = Location.find(params[:id])
  	if @location.update(location_params)
  		flash[:success] = "Location edited"
  		render :edit
  	else
  		flash[:error] = "Can't update location"
  	end
  end

  private

  	def location_params
  		params.require(:location).permit(:address, :city, :user_id)
  	end
end
