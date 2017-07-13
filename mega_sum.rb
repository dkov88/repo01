#!/usr/bin/env ruby

def mega_sum(array, *args, &block)
	
	sum = 0
	i = 0
	
	while i < array.size
		unless block_given?
			sum = array.inject(0){|sum,x| sum + x }
		else
		  val = yield array[i]
		  sum += val
		end
		i += 1
	end
  
  if args[0]
  	sum = sum + args[0]
  end

	puts sum
end

mega_sum([1, 2, 3, 4])

mega_sum([1, 2, 3, 4], 10)

mega_sum([1, 2, 3, 4]) { |i| i ** 2 }

mega_sum([1,2,3,4], 10) { |i| i**2 }
 
