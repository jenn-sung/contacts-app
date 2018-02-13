class V2::ContactsController < ApplicationController
  # before_action :authenticate_user
  
  def index
    # if current_user
      # contacts = current_user.contacts
      contacts = Contact.all
      render json: contacts.as_json
    # else  
    #   render json: contacts.as_json
    end
    
  # end

  def show
    the_id = params[:id]
    contact = Contact.find_by(id: the_id)
    render json: contact.as_json
  end

  def create
    contact = Contact.new(
      first_name: params['first_name'],
      middle_name: params['middle_name'],
      last_name: params['last_name'],
      bio: params['bio'],
      email: params['email'],
      phone_number: params['phone_number'],
      latitude: params['latitude'],
      longitude: params['longitude']
      )
    if contact.save
      render json: contact.as_json
    else
      render json: {errors: contact.errors.full_messages}
    end
  end

  def update
    the_id = params[:id]
    contact = Contact.find_by(id: the_id)
    contact.update(
      first_name: params['first_name'],
      last_name: params['last_name'],
      middle_name: params['middle_name'],
      email: params['email'],
      phone_number: params['phone_number'],
      bio: params['bio']
      )
    render json: contact.as_json
  end

  def find_location
    coordinates = Geocoder.coordinates(address)
    render json: contact.as_json
  end

  def johns
    johns = Contact.all_johns
    render json: contact.as_json
  end
end
