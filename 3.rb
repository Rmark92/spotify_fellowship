def change_possibilities(amount, denoms)
  return 1 if amount.zero?
  num_ways = 0
  denoms.each_with_index do |denom, idx|
    rem = amount
    without_denom = denoms[idx + 1..-1]
    while denom <= rem
      rem -= denom
      num_ways += change_possibilities(rem, without_denom)
    end
  end
  num_ways
end
