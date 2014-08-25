def prime?(num)
	(2..(num/2)).to_a.each { |seq| if num%seq == 0 then return false end }
		return true
end

def find_largest_prime_div(num)
	i = 2
	while i < (num/2) 
		if (num%i) == 0 and prime?(i) then
			return find_largest_prime_div(num/i)
		end
		i += 1
	end
	return num
end

puts find_largest_prime_div(600851475143)
