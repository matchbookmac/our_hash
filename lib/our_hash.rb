class OurHash
  define_method(:initialize) do
    @keys = []
    @values = []
    @hash = [@keys, @values]
  end

  define_method(:keys) do
    keys = @keys
  end

  define_method(:values) do
    values = @values
  end

  define_method(:hash) do
    hash = @hash
  end

  define_method(:fetch) do |key|
    value = ""
    @keys.each_index() do |key_index|
      if(key.eql?(@keys[key_index]))
        value = @values[key_index]
      end
    end
    value
  end

  define_method(:store) do |key, value|
    @keys.push(key)
    @values.push(value)
  end

  define_method(:has_key?) do |key|
    @keys.include?(key)
  end

  define_method(:length) do
    @keys.length()
  end

  define_method(:merge) do |array|
    other_keys = array.keys()
    other_values = array.values()
    new_keys = @keys
    new_values = @values
    other_keys.each_index() do |key_index|
      new_keys.push(other_keys[key_index])
      new_values.push(other_values[key_index])
    end
    new_hash = OurHash.new()
    new_keys.each_index() do |key_index|
      new_hash.store(new_keys[key_index], new_values[key_index])
    end
    new_hash.hash()
  end
end
