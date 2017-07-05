# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)

  keys = []

  name_hash.each_key do |key|
    keys << key
  end

  smallest = name_hash[keys[0]]

  smallest_key = nil

  keys.each_index do |idx|
    if name_hash[keys[idx]] < smallest
      smallest = name_hash[keys[idx]]
      smallest_key = keys[idx]
    elsif name_hash[keys[idx]] > smallest
      smallest
    else
      smallest_key = keys[idx]
    end
  end
  smallest_key
end
