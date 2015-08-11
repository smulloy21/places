require('rspec')
require('places_youve_been')

describe(Place) do
  describe('#where') do
    it("gives the place name") do
      test_place = Place.new("Moscow")
      expect(test_place.where()).to(eq("Moscow"))
    end
  end
end
