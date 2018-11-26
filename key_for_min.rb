# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  values = name_hash.collect { |k, v| v }
  keys = name_hash.collect { |k, v| k }
  min = values[0]
  values.each  { |value| min = value < min ? value : min }
  keys.index(min)
end