# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    return nil
  end

  small_key = nil

  name_hash.each do |key, value|
    if small_key == nil
      small_key = key
    elsif value < name_hash[small_key]
      small_key = key
    else next
    end
  end
  small_key
end
