def fib(a1, a2, sum)
  if a2 > 4000000
    return sum
  else
    sum += a2 if a2 % 2 == 0
    fib(a2, a1 + a2, sum)
  end
end

puts fib(1, 2, 0)
