require('rspec')
require('contact')


describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("contact_name") do
    it("returns the contact name") do
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      test_contact.save()
      expect(test_contact.contact_name()).to(eq("Billy Jean"))
    end
  end

  describe("phone_number") do
    it("returns the phone number") do
      test_phone_number = Contact.new("Billy Jean", "503-555-1111")
      test_phone_number.save()
      expect(test_phone_number.phone_number()).to(eq("503-555-1111"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".find_contact") do
    it("will search for the contact by contact name") do
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      test_contact.save()
      expect(Contact.find_contact(test_contact.contact_name())).to(eq(test_contact))
    end
  end

  describe("#save") do
    it("pushes a contact into the array") do
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      expect(test_contact.save()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved contacts") do
      Contact.new("Billy Jean", "503-555-1111").save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end
end #end class
