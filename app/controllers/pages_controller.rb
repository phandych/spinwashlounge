class PagesController < ApplicationController
  def home
  	@contact = Contact.new
  	@user = User.first
  	@location = Location.first
  end
end
