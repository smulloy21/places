require('rspec')
require('places_youve_been')

describe(Place) do
  describe('#where') do
    it("gives the place name") do
      test_place = Place.new("Moscow")
      expect(test_place.where()).to(eq("Moscow"))
    end
  end

  describe('.all') do
    it('returns empty list') do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a place to all places list') do
      test_place = Place.new("Iceland")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end
end
