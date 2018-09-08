collatz_counts = { 1: 1 }

def collatz_count(n):
  if n in collatz_counts:
    return collatz_counts[n]
  if n % 2 == 0:
    count = 1 + collatz_count(n / 2)
    collatz_counts[n] = count
    return count
  else:
    count = 1 + collatz_count(3 * n + 1)
    collatz_counts[n] = count
    return count

max_count = 0
max_val = 0

for i in range(1, 1000000):
  count = collatz_count(i)
  if count > max_count:
    max_count = count
    max_val = i

print max_val, max_count
