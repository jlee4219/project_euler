def is_prime(n)
  (2..Math.sqrt(n).to_i).each do |i|
    if n % i == 0
      return false
    end
  end
  return true
end

factor_counts = {
  2 => 2,
}
def count_prime_factors(n, factor_counts)
  return factor_counts[n] if factor_counts.key?(n)
  total_count = 1
  (2..n).each do |i|
    if (n % i == 0) && is_prime(i)
      count = 0
      prod = 1
      while (n % (prod * i) == 0)
        prod *= i
        count += 1
      end
      total_count *= (count + 1)
    end
  end
  factor_counts[n] = total_count
  return total_count
end

factor_count = 0
i = 3
while(factor_count < 500)
  counts_odd = 0
  counts_even = 0
  if i % 2 == 0
    counts_even = count_prime_factors(i / 2, factor_counts)
    counts_odd = count_prime_factors(i + 1, factor_counts)
  else
    counts_odd = count_prime_factors(i, factor_counts)
    counts_even = count_prime_factors((i + 1) / 2, factor_counts)
  end
  factor_count = counts_odd * counts_even
  puts "#{(i * (i + 1) / 2)}, #{factor_count}"
  i += 1
end
