class Contact
  @@contacts = []

  define_method(:initialize) do |contact_name, phone_numbers|
    @contact_name = contact_name
    @phone_numbers = []
    @id = @@contacts.length().+(1)
  end

  define_method(:contact_name) do
    @contact_name
  end

  define_method(:phone_numbers) do
    @phone_numbers
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find_contact) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id() == id
        found_contact = contact
      end
    end
    found_contact
  end

  define_method(:add_contact) do |contact|
    @phone_numbers.push(contact)
  end

end #end class
