require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require('./lib/contact')
require('./lib/phone')

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/phone_numbers') do
  @contact_name = params.fetch('contact_name')
  @phone_number = params.fetch('phone_number')

  test_contact = Contact.new(@contact_name, @phone_number)
  test_contact.save()
  redirect("/")
end

# post('/phone_numbers') do
#   home = params.fetch("home")
#   work = params.fetch("work")
#   cell = params.fetch("cell")
#   @phone_numbers = Phone.new(home, work, cell)
#   @phone_numbers.save()
#   @contact = Contact.find_contact(params.fetch('contact_id').to_i())
#   @contact.add_contact(@phone_numbers)
#   erb(:contacts)
# end

# get('/phone_numbers/:id') do
#   @phone_numbers = Phone.find_phone_numbers(params.fetch("id"))
#   erb(:phone_numbers)
# end
#
# get('/contacts/:id') do
#   @contacts = Contact.find_contact(params.fetch('id').to_i())
#   erb(:contacts)
# end















# require('sinatra')
# require('sinatra/reloader')
# also_reload("lib/**/*.rb")
# require('./lib/contact')
# require('./lib/phone')
#
#   get('/') do
#     @phone_numbers = Phone.all()
#     erb(:index)
#   end
#
#   post('/phone_numbers') do
#     phone_number = params.fetch('phone_number')
#     Phone.new(phone_number).save()
#     @phone_numbers = Phone.all()
#     erb(:index)
#     #this block adds a new instance of phone numbers
#   end
#
#   post('/numbers') do
#     phone_number = params.fetch('phone_number') #takes input from form
#     contact_name = params.fetch('contact_name')
#     @contact = Contact.new(contact_name, phone_number) #this creates new contact
#     @contact.save()
#     @phone_number_var = Phone.find(params.fetch('phone_id').to_i()) #finds pn by id
#     @phone_number_var.add_phone_number(@contact) #adds phone number to contact
#     erb(:phone)
#   end
#
#   get('/numbers/:id') do
#     @contact = Contact.find(params.fetch('id')) #change this
#     erb(:contact)
#   end
#
#   get('/phone_numbers/:id') do
#     @phone_number_var = Phone.find(params.fetch('id').to_i())
#     erb(:phone)
#     #links to contact.erb dynamically showing each contact's info
#   end
