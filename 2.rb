def decode_strings(s)
  while s =~ /\d\[.*\]/
    s = s.gsub(/(\d)\[([a-zA-Z]*)\]/) { $2 * $1.to_i }
  end
  s
end
