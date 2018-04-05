def is_prime(n)
  (2..Math.sqrt(n).to_i).each do |i|
    if n % i == 0
      return false
    end
  end
  return true
end

def find_biggest(n)
  (2..Math.sqrt(n).to_i).reverse_each do |i|
    if (n % i == 0) && is_prime(i)
      return i
    end
  end
end

puts find_biggest(600851475143)
