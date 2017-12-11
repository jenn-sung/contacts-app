require 'unirest'
require 'pp'

p "This is your contact app. Please choose an option."
p "[1] show all contacts"
p "[2] show a particular contact"
p "[3] create a new contact"
p "[4] update an existing contact"

user_input = gets.chomp
   

if user_input == '1'
  response = Unirest.get("localhost:3000/contacts")
  pp response.body
elsif user_input == '2'
  p "Type the id of the contact you want to see."
  contact_id = gets.chomp
  response = Unirest.get("localhost:3000/contacts/#{contact_id}")
  pp response.body
elsif user_input == '3'
  the_params = {}
  p "Enter the first name"
  the_params['first_name'] = gets.chomp
  p "Enter the last name"
  the_params['last_name'] = gets.chomp
  p "Enter the middle name"
  the_params['middle_name'] = gets.chomp
  p "Enter the email"
  the_params['email'] = gets.chomp
  p "Enter the phone number"
  the_params['phone_number'] = gets.chomp
  p "Enter the bio"
  the_params['bio'] = gets.chomp
  p "Enter your full address"
  the_params['address'] = gets.chomp

  response = Unirest.post("localhost:3000/contacts", parameters: the_params)
  pp response.body

elsif user_input == '4'
  p "Tell me the id of the contact you need."
  contact_id = gets.chomp.to_i

  response = Unirest.get('localhost:3000/contacts/#contact_id')
  contact = response.body
  he_params = {}
  p "Enter the first name"
  the_params['first_name'] = gets.chomp
  p "Enter the last name"
  the_params['last_name'] = gets.chomp
  p "Enter the middle name"
  the_params['middle_name'] = gets.chomp
  p "Enter the email"
  the_params['email'] = gets.chomp
  p "Enter the phone number"
  the_params['phone_number'] = gets.chomp
  p "Enter the bio"
  the_params['bio'] = gets.chomp
  p "Enter your full address"
  the_params['address'] = gets.chomp

  response - Unirest.patch("localhost:3000/contacts/#{contact_id}", parameters: the_params)

  pp response.body   
  
end