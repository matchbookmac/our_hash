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
  describe('length') do
    it('returns the length of the hash') do
      test_hash = OurHash.new()
      test_hash.store("Illiad", "Homer")
      expect(test_hash.length()).to(eq(1))
    end
  end
  describe('#merge') do
    it('merges two hashes, and returns a hash of the merge') do
      test_hash = OurHash.new()
      test_hash.store("Illiad", "Homer")
      other_hash = OurHash.new()
      other_hash.store("kitten", "cute")
      expect(test_hash.merge(other_hash)).to(eq([["Illiad", "kitten"],["Homer", "cute"]]))
    end
  end
end
