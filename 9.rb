def find_triple
  (1..999).each do |a|
    (1..(999 - a)).each do |b|
      c = 1000 - a - b
      return a, b, c if a ** 2 + b ** 2 == c ** 2
    end
  end
end

puts find_triple.reduce(:*)
