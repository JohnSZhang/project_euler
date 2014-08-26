def prime_sum(limit)
    prime_arr = []
    i = 2
    while i < limit do 
        (prime_arr << i) if prime?(i, prime_arr)
        i == 2 ? i += 1 : i += 2
    end
    return prime_arr.reduce(0, :+)
end
def prime?(num, prime_arr)
    prime_arr.each { |seq| if num%seq == 0 then return false end }
        return true
end
time_begin = Time.now()
puts prime_sum(2000000)
puts Time.now() - time_begin