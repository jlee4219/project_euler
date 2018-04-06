def pairwise_prod(n)
  prod = 0
  (1..n).each do |i|
    (1..n).each do |j|
      next if i == j
      prod += i * j
    end
  end
  return prod
end

puts pairwise_prod(100)
