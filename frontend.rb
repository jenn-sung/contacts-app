require 'unirest'

response = Unirest.get('http://localhost:3000/v1/contact')

contact = response.body

p "This person is #{contact['first_name']} #{contact['last_name']}"