class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @create = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Message delivered'
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end
end
