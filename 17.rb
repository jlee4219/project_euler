NAMES = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
TENS = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
HUNDRED = "hundred"
AND = "and"

def get_name(n)
  if n < 20
    return NAMES[n - 1]
  else
    if n < 100
      if n % 10 == 0
        return "#{TENS[n / 10 - 2]}"
      else
        return "#{TENS[n / 10 - 2]} #{NAMES[n % 10 - 1]}"
      end
    else n < 1000
      if n % 100 == 0
        return "#{NAMES[n / 100 - 1]} #{HUNDRED}"
      else
        return "#{NAMES[n / 100 - 1]} #{HUNDRED} #{AND} #{get_name(n % 100)}"
      end
    end
  end
end

puts (1..999).map { |i| get_name(i).gsub(" ", "").length }.reduce(:+) + "onethousand".length
