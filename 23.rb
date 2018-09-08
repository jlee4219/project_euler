require 'set'

def get_sum_divisors(n)
  total = 0
  (1..n-1).each do |i|
    if (n % i) == 0
      total += i
    end
  end
  return total
end

def is_abundant?(n)
  get_sum_divisors(n) > n
end

abundant = Set.new((1..28111).select { |n| is_abundant?(n) })
puts abundant.size

total = 0
(1..28123).each do |i|
  can_sum = false
  abundant.each do |j|
    if (i > j && abundant.include?(i - j))
      can_sum = true
      break
    end
  end
  unless can_sum
    total += i
  end
end

puts total
