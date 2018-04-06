def is_prime(n)
  (2..Math.sqrt(n).to_i).each do |i|
    if n % i == 0
      return false
    end
  end
  return true
end

count = 0
curr = 1
while count < 10001
  curr += 1
  if is_prime(curr)
    count += 1
  end
end

puts curr
