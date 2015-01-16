require('rspec')
require('phone')
require('contact')

describe(Phone) do
  before() do
    Phone.clear()
  end

  describe("#home") do
    it("returns the home phone") do
      test_home = Phone.new("503-555-1111", "503-555-2222", "503-555-3333")
      test_home.save()
      expect(test_home.home()).to(eq("503-555-1111"))
    end
  end

  describe("#work") do
    it("returns the work phone") do
      test_work = Phone.new("503-555-1111", "503-555-2222", "503-555-3333")
      test_work.save()
      expect(test_work.work()).to(eq("503-555-2222"))
    end
  end

  describe("#cell") do
    it("returns the cell phone") do
      test_cell = Phone.new("503-555-1111", "503-555-2222", "503-555-3333")
      test_cell.save()
      expect(test_cell.cell()).to(eq("503-555-3333"))
    end
  end

  describe("#id") do
    it("gives an id for the phone numbers") do
      test_phone_numbers = Phone.new("503-555-1111", "503-555-2222", "503-555-3333")
      test_phone_numbers.save()
      expect(test_phone_numbers.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("saves phone number entries into the array") do
      test_phone_numbers = Phone.new("503-555-1111", "503-555-2222", "503-555-3333")
      test_phone_numbers.save()
      expect(Phone.all()).to(eq([test_phone_numbers]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved phone number") do
      Phone.new("503-555-1111", "503-555-2222", "503-555-3333").save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe(".find_phone_numbers") do
    it("finds the phone numbers by id") do
      test_phone_numbers = Phone.new("503-555-1111", "503-555-2222", "503-555-3333")
      test_phone_numbers.save()
      test_phone_number2 = Phone.new("503-999-1111", "503-999-2222", "503-999-3333")
      test_phone_number2.save()
      expect(Phone.find_phone_numbers(test_phone_numbers.id())).to(eq(test_phone_numbers))
    end
  end
end
