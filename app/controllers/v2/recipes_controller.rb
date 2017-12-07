class V2::ContactsController < ApplicationController

  def show_contact
    contact = Contact.first
    render json: contact.as_json
  end 
end