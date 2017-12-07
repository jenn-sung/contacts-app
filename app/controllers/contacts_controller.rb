class  V1::ContactsController < ApplicationController

  def show_contact
    contact = Contact.first
    render json: {
      first_name: contact.first_name,
      last_name: contact.last_name, 
      email: contact.email, 
      phone_number: contact.phone_number
    }
  end
  
  def contact1
    contact1 = Contact.first
    render json: contact1.as_json 
  end

end