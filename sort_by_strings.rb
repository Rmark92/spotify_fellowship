def sort_by_strings(str1, str2)
  letter_positions = {}
  (0...str2.length).each do |str2_idx|
    letter_positions[str2[str2_idx]] = str2_idx
  end

  str1.chars
      .sort { |a, b| letter_positions[a] <=> letter_positions[b] }
      .join("")
end
