class  V1::ContactsController < ApplicationController
  
  def contact1
    contact1 = Contact.first
    render json: contact1.as_json 
  end

  def index
    contacts =


  end