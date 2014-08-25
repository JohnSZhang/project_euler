def fib(num)
	if num == 1
		return 1
	elsif num == 2
		return 2
	else 
		return fib(num-1) + fib(num-2)
	end
end
threshold = 4000000
counter = 1
fib_collection = []
while fib(counter) < threshold
	fib_collection << fib(counter)
	counter += 1
end
print fib_collection.inject(0){ |sum, value| value % 2 == 0 ? sum + value : sum }
