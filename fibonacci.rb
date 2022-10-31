# Interatively

def fib(n)
  arr = []
  if n > 0
    arr.push(0, 1)
  end
  (n).times do |i|
    arr.push(arr[i] + arr[i+1])
  end
  return arr[..[0,n-1].max]
end

# Recursively

def rec_fib(max, n = 0,arr = [0,1])
  return n >= max ? arr[..[0,n-1].max] : rec_fib(max, n+1, arr.concat([arr[n] + arr[n+1]]))
end

p rec_fib(8)