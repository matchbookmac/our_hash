require('rspec')
require('our_hash')

describe(OurHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = OurHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
  end
  describe('#has_key?') do
   it('returns true if the hash provided contains the key provided') do
     test_hash = OurHash.new()
     test_hash.store("Illiad", "Homer")
     expect(test_hash.has_key?("Illiad")).to(eq(true))
   end
  end
end
