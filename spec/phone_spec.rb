require('rspec')
require('phone')
require('contact')

describe(Phone) do

  describe(".all") do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("gives an id for each phone number") do
      test_phone_number = Phone.new("503-555-1111")
      expect(test_phone_number.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("saves contact entry into the array") do
      test_phone_number = Phone.new("503-555-1111")
      test_phone_number.save()
      expect(Phone.all()).to(eq([test_phone_number]))
    end
  end

  describe(".find_phone_number") do
    it("finds the phone number by id") do
      test_phone_number = Phone.new("503-555-1111")
      test_phone_number.save()
      test_phone_number2 = Phone.new("503-555-2222")
      test_phone_number2.save()
      expect(Phone.find_phone_number(test_phone_number.id())).to(eq(test_phone_number))
    end
  end

  describe("add_phone_number") do
    it("adds a phone number to the contact's phone number list") do
      test_phone_number = Phone.new("503-555-1111")
      test_contact = Contact.new("Billy Jean", "503-555-1111")
      test_phone_number.add_phone_number(test_contact)
      expect(test_phone_number.phone_numbers()).to(eq([test_contact]))
    end
  end
end #end class
