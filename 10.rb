def is_prime(n)
  (2..Math.sqrt(n).to_i).each do |i|
    if n % i == 0
      return false
    end
  end
  return true
end

sum = 0
curr = 1
while curr < 2000000
  curr += 1
  if is_prime(curr)
    sum += curr
  end
end

puts sum
