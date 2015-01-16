class Phone

  @@phone_numbers_class = []

  define_method (:initialize) do |phone_number|
    @contact_name = contact_name
    @phone_numbers = []
    @id = @@phone_numbers_class.length().+1
  end

  define_method(:contact_name) do
    @contact_name
  end

  define_method(:phone_numbers) do
    @phone_numbers
  end

  define_method(:add_phone_number) do |phone_numbers_added|
    @phone_numbers.push(phone_numbers_added)
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@phone_numbers_class.push(self)
  end

  define_singleton_method(:all) do
    @@phone_numbers_class
  end

  define_singleton_method(:clear) do
    @@phone_numbers_class = []
  end

  define_singleton_method(:find_phone_number) do |search_phone_number|
    found_phone_number = nil
    @@phone_numbers_class.each() do |number_in_class|
      if number_in_class.id() == search_phone_number
        found_phone_number = number_in_class
      end
    end
    found_phone_number
  end
end
