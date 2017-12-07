class  V1::ContactsController < ApplicationController

  def show_contact
    contact = Contact.first
    render json: contact.as_json
  end
  
  #def all_contacts
    #contacts = Contact.all 
    #contact_hashes = []
    #i = 0
    #contacts.length.times do
      #contact = {first_name: contacts[i].first_name,
      #last_name: contacts[i].last_name,
      #email: contacts[i].email, 
      #phone_number: contacts[i].phone_number,
      #contact_hashes << contact
      #i += 1
    #end

    #render json: contact_hashes
  #end

end