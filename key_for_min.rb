# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  values = name_hash.collect { |k, v| v }
  keys = name_hash.collect { |k, v| k }
  min = values[0]
  puts values
  values.each  do |value|
    puts "\tval:#{value}"
    puts "\tmin:#{min}"
    min = value < min ? value : min
    puts "\tmin:#{min}"
  end
  puts "min:#{min}"
  puts "keys:#{values}"
  puts "index:#{values.index(min)}"
  values.index(min)
end
