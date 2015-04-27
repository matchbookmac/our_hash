class OurHash
  define_method(:initialize) do
    @keys = []
    @values = []
    @hash = [@keys, @values]
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
end
