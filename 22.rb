names = File.open('/Users/jefferson_lee/Downloads/names.txt').read
names = names.split(',')
names = names.map { |name| name[1..-2]}
names.sort!

def value(name)
  total = 0
  name.each_char { |c| total += c.ord - 'A'.ord + 1 }
  total
end

count = 1
total = 0
names.each do |name|
  total += count * value(name)
  count += 1
end

puts total
