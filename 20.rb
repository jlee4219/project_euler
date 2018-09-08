fact = 1

(1..100).each do |i|
  fact *= i
  if (fact % 100) == 0
    fact /= 100
  end
  if (fact % 10) == 0
    fact /= 10
  end
end

puts fact.to_s.split("").map(&:to_i).reduce(:+)
