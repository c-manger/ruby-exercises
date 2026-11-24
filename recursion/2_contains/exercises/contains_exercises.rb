def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false

  return true if hash.value?(search_value)

  hash.values.any? do |value|
    value.is_a?(Hash) && contains?(value, search_value)
  end
  #nested_hashes = hash.values.select { |value| value.is_a?(Hash) }
  #nested_hashes.any? { |nested_hash| contains?(nested_hash, search_value) }
end
