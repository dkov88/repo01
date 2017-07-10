#!/usr/bin/env ruby

fibonacci_length = ARGV[0]

if fibonacci_length.nil?
  puts "Argument missed! Please enter positive value"
elsif fibonacci_length.to_i == 1
  puts 0
elsif fibonacci_length.to_i > 1
  n = 1
  fibonacci = [0, n]

  while fibonacci.length < fibonacci_length.to_i
    fibonacci[n+1] = fibonacci[n] + fibonacci[n-1]
    n += 1
  end

  puts fibonacci.join(", ")
  
else
  puts "Wrong argument: please enter positive value"
end




 


