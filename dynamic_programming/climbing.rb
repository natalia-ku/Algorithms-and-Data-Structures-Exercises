#You are climbing a stair case. It takes n steps to reach to the top.
#Each time you can either climb 1 or 2 steps.
#In how many distinct ways can you climb to the top?
#Note: Given n will be a positive integer.
def fibonacci(n)
  return n if n <= 1
  return fibonacci(n-1) + fibonacci(n-2)
end

def fibonacci2(n)
  fib = []
  fib[0] = 1
  fib[1] = 1
  (2..n).each do |i|
    fib[i] = fib[i-1] + fib[i-2]
  end
  return fib[n]
end

def climb2(n)
  return fibonacci(n+1)
end

puts climb2(3)
puts climb2(9)
puts climb2(12)
puts climb2(30)

puts fibonacci2(3)
puts fibonacci2(9)
puts fibonacci2(12)
puts fibonacci2(30)

# def climb(n)
#   return 0 if n <= 0
#   return 1 if n == 1
#   return 2 if n == 2
#   one_step_before = 2 # number of solutions before n: [n-1]
#   two_steps_before = 1 # number of solutions before n: [n-2
#   all_ways = 0
#   (2..n).each do |i|
#     all_ways = one_step_before + two_steps_before
#     two_steps_before = one_step_before
#     one_step_before = all_ways
#   end
#   return all_ways
# end

# puts climb(3)
# puts climb(9)
# puts climb(12)
# puts climb(30)
