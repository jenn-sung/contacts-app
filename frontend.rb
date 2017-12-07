require 'unirest'

base_url = "http://localhost:3000"

response = Unirest.get("#{base_url}/v1/contact")

contact = response.body

p "This person is #{contact['first_name']} #{contact['last_name']}"