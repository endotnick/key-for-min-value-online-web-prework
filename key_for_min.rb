# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  keys = name_hash.collect { |k, v| k }
  values = name_hash.collect { |k, v| v }
  min = values[0]
  values.each { |value| min = value < min ? value : min }
  min ? keys[values.index(min)] : nil
end
