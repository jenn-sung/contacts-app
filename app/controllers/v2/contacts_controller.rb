class V2::ContactsController < ApplicationController
  def index
    contacts = Contact.all
    render json: contacts.as_json
  end

  def show
    the_id = params[:id]
    contact = Contact.find_by(id: the_id)
    render json: contact.as_json
  end
  
  def johns
    johns = Contact.all_johns
    render json: contact.as_json
  end

  def create
    contact = Contact.new(
      first_name: params['first_name'],
      middle_name: params['middle_name'],
      last_name: params['last_name'],
      bio: params['bio'],
      email: params['email'],
      phone_number: params['phone_number']
      )
    contact.save

    render json: contact.as_json
  end
end