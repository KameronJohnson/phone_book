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

  define_method(:phone_number) do
    @phone_number
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

  define_singleton_method(:find_contact) do |searched_contact|
    found_contact = nil
    @@contacts.each() do |contact_in_class|
      if contact_in_class.id() == searched_contact
        found_contact = contact_in_class
      end
    end
    found_contact
  end

end #end class
