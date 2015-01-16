require('rspec')
require('contact')
require('phone')


describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("#contact_name") do
    it("returns the contact name") do
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      test_contact.save()
      expect(test_contact.contact_name()).to(eq("Billy Jean"))
    end
  end

  describe('#id') do
    it("returns the id of the contact") do
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("pushes a contact into the array of saved contacts") do
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved contacts") do
      Contact.new("Billy Jean", "503-555-1111").save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".find_contact") do
    it("returns a contact by its id number") do
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      test_contact.save()
      test_contact2 = Contact.new("Ruby Sue", "503-555-2222")
      test_contact2.save()
      expect(Contact.find_contact(test_contact.id())).to(eq(test_contact))
    end
  end

  describe('#add_contact') do
    it("adds a new phone number to contacts") do
      test_contact = Contact.new("Billy Jean", "503-555-9999")
      test_phone_numbers = Phone.new("503-555-1111", "503-555-2222", "503-555-3333")
      test_contact.add_contact(test_phone_numbers)
      expect(test_contact.phone_numbers()).to(eq([test_phone_numbers]))
    end
  end

end #end class

# describe("#phone_number") do
#   it("returns the phone number") do
#     test_phone_number = Contact.new("Billy Jean", "503-555-1111")
#     test_phone_number.save()
#     expect(test_phone_number.phone_number()).to(eq("503-555-1111"))
#   end
# end
