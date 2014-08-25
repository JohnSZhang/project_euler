def multiples_of_3_5(num)
	return	(1..num-1).inject(0){|sum, element| 
							if (element%3 == 0 or element%5 == 0) then sum + element 
									else sum end }
end
p multiples_of_3_5(1000)