def add(x, y)
  x + y
end

def subtract(x, y)
  x - y 
end

def sum(arr)
  arr.inject 0, :+
end

def multiply(*args)
  result = 1
  args.each { |n| result = result * n }
  result
end

def power(x, y)
  x**y
end
