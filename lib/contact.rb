class Contact
  @@contacts = []

  define_method(:initialize) do |contact_name, phone_number|
    @contact_name = contact_name
    @phone_number = phone_number
  end

  define_method(:contact_name) do
    @contact_name
  end

  define_method(:phone_number) do
    @phone_number
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

end #end class
