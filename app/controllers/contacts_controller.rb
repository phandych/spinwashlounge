class ContactsController < ApplicationController
  def create
  	@contact = Contact.new(params[:contact])
  	@contact.request = request
  	if @contact.deliver
  		redirect_to "/#contact"
  	else
  		flash.now[:error] = "Cannot send message"
  		redirect_to '/#contact'
  	end
  end
end
