# our_hash

Learning example for understanding how Classes work in ruby.

Implemented `#fetch`, `#store`, `#has_key?`, `#length`, and `#merge` methods.

Implemented hash using an array of arrays, as in:

```ruby
@hash = [[keys],[values]]
```

`#fetch`, `#store`, work by indexing into key array, and storing or fetching at the corresponding key index,
which should be the same as the value index for that key.
