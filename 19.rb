days_of_months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

count = 0
curr_day = 2
(1901..2000).each do |year|
  (0..11).each do |month|
    curr_day += days_of_months[month]
    if month == 1 && year % 4 == 0
      curr_day += 1
    end

    if curr_day % 7 == 0
      count += 1
    end
  end
end

puts count
