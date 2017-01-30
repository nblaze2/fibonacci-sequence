require 'benchmark'
module Fib
  def self.compute(index)
    first = 0
    second = 1
    index.times do
      third = first + second
      first = second
      second = third
    end
    first
  end
end

puts "Welcome to Nick's Fibonacci sequence calculator."
print "Please enter the number of the Fibonacci sequence you'd would like to find: "
number = gets.chomp.to_i


print "The #{number} number in the sequence is: "
puts Fib.compute(number)
puts Benchmark.measure { Fib.compute(number) }
