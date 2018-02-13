require 'unirest'
require 'pp'
  
while true
  system 'clear'

  p "This is your contact app. Please choose an option."
  p "[1] show all contacts"
  p "[2] show a particular contact"
  p "[3] create a new contact"
  p "[4] update an existing contact"
  p "[5] sign up"
  p "[6] login"
  p "[7] logout"
  p "Type Exit to leave"

  
  user_input = gets.chomp

  if user_input == '1'
    response = Unirest.get("localhost:3000/v2/contacts")
    pp response.body
  elsif user_input == '2'
    p "Type the id of the contact you want to see."
    contact_id = gets.chomp
    response = Unirest.get("localhost:3000/v2/contacts/#{contact_id}")
    pp response.body
  elsif user_input == '3'
    the_params = {}
    p "Make a new contact"
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
    response = Unirest.post("localhost:3000/v2/contacts", parameters: the_params)
    pp response.body
  elsif user_input == '4'
    p "Tell me the id of the contact you need."
    contact_id = gets.chomp
    response = Unirest.get("localhost:3000/v2/contacts/#{contact_id}")
    the_contact = response.body
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
    response = Unirest.patch("localhost:3000/v2/contacts/#{contact_id}", parameters: the_params)
    pp response.body   
  elsif user_input == '5'
    the_params = {}
    p "Enter your user name"
    the_params['name'] = gets.chomp
    p "Enter your email"
    the_params['email'] = gets.chomp
    p "Enter your password"
    the_params['password'] = gets.chomp
    p "Confirm your password"
    the_params['password_confirmation'] = gets.chomp
    response = Unirest.post("http://localhost:3000/v2/users", 
      parameters: the_params)
    pp response.body
  elsif user_input == '6'
    p "Enter your email"
    user_email = gets.chomp
    p "Enter your password"
    user_password = gets.chomp
    response = Unirest.post(
    "http://localhost:3000/user_token", 
      parameters: {
      auth: {
        email: user_email,
        password: user_password
          }
        }
      )
    jwt = response.body["jwt"]
    Unirest.default_header("Authorization", "Bearer #{jwt}")
    pp response.body
  elsif user_input == '7'
    jwt = "You have logged out"
    Unirest.clear_default_headers()
    pp jwt
  elsif user_input == 'exit'
    break
  end

end
