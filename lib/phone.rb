class Phone

  @@phone_numbers = []

  define_method (:initialize) do |home, work, cell|
    @home = home
    @work = work
    @cell = cell
    @id = @@phone_numbers.length().+1
  end

  define_method(:home) do
    @home
  end

  define_method(:work) do
    @work
  end

  define_method(:cell) do
    @cell
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:all) do
    @@phone_numbers
  end

  define_method(:save) do
    @@phone_numbers.push(self)
  end

  define_singleton_method(:clear) do
    @@phone_numbers = []
  end

  define_singleton_method(:find_phone_numbers) do |identification|
    found_phone_numbers = nil
    @@phone_numbers.each() do |numbers|
      if numbers.id() == identification
        found_phone_numbers = numbers
      end
    end
    found_phone_numbers
  end
end



  # define_method(:phone_numbers) do
  #   @phone_numbers
  # end


  # define_method(:contact_name) do
  #   @contact_name
  # end

  # define_method(:add_contact) do |contact|
  #   @contacts.push(contact)
  # end

  # define_method(:add_phone_number) do |phone_numbers_added|
  #   @phone_numbers.push(phone_numbers_added)
  # end
