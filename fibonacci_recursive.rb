require 'benchmark'
def fibonacci(number)
  if number == 0
    0
  elsif number == 1 || number == 2
    1
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts "Welcome to Nick's Fibonacci sequence calculator."
print "Please enter the number of the Fibonacci sequence you'd would like to find: "
number = gets.chomp.to_i


print "The #{number} number in the sequence is: "
puts fibonacci(number)
puts Benchmark.measure { fibonacci(number) }
