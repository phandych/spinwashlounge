class ContactsController < ApplicationController
  def create
  	@contact = Contact.new(params[:contact])
  	@contact.request = request
  	if verify_recaptcha(model: @contact) && @contact.deliver
      flash[:success] = "Message has send"
  		redirect_to "/#contact"
  	else
  		flash[:error] = "Cannot send message, please fill require information"
  		redirect_to '/#contact'
  	end
  end
end
