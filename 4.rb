require 'set'

def is_palindrome(n)
  s = n.to_s
  (0..s.length - 1).each do |i|
    if s[i] != s[s.length - i - 1]
      return false
    end
  end
  return true
end

def solve
  answers = Set.new
  (100..999).reverse_each do |i|
    (100..999).reverse_each do |j|
      if is_palindrome(i * j)
        answers.add(i * j)
      end
    end
  end
  return answers.max
end

puts solve
