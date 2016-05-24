class PagesController < ApplicationController
  def home
  	@location = Location.find_by(params[:user_id])
  end
end
