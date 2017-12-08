class V2::ContactsController < ApplicationController
  def index
    contacts = Contact.all
    render json: contacts.as_json
  end

  def show
    the_id = params['id']
    contact = Contact.find_by(id: the_id)
    render json: contact.as_json
  end
  
  def johns
    johns = Contact.all_johns
    render json: contact.as_json
  end

  def middle_name
    
  end
end