class PagesController < ApplicationController
  def home
  	@contact = Contact.new
  	@location = Location.first
  end
end
