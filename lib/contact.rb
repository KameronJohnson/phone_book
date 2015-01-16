class Contact
  @@contacts = []

  define_method(:initialize) do |contact_name, phone_number|
    @contact_name = contact_name
    @phone_number = phone_number
    @id = @@contacts.length().+(1)
  end

  define_method(:contact_name) do
    @contact_name
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:id) do
    @id
  end

  define_method(:phone_number) do
    @phone_number
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:find_contact) do |contact_search|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.contact_name() == contact_search
        found_contact = contact
      end
    end
    found_contact
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

end #end class
