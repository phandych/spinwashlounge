class PagesController < ApplicationController
  def home
  	@location = Location.first
  end
end
