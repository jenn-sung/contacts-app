require 'unirest'
require 'pp'

base_url = "http://localhost:3000/v2"

system "clear"

response = Unirest.get("#{base_url}/v2/contact")

contact = response.body

#p "This person is #{contact['first_name']} #{contact['last_name']}"
p "This is your contact app. Please be sure to update yours with your middle name and bio. Choose an option."
p "[1] enter your middle name"
p "[2] enter your bio"

user_input = gets.chomp
   
"localhost:3000/contacts/2"

response = Unirest.post('#{base_url}/contacts')

#if user_input == '1'
  #response = Unirest.get("#{base}")