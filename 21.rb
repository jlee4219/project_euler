SUM_DIVISORS = {}

def get_sum_divisors(n)
  return SUM_DIVISORS[n] if SUM_DIVISORS.key? n
  sum = 0
  (1..n-1).each do |i|
    sum += i if n % i == 0
  end
  return sum
end

sum = 0
(2..10000).each do |i|
  a = get_sum_divisors(i)
  b = get_sum_divisors(a)
  if b == i && b != a
    puts "#{a} #{b}"
    sum += a
  end
end

puts sum
