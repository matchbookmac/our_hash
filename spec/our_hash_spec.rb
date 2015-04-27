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
end
