def primes(limit)
    prime_seive = (2..limit).to_a
    current_p = 2
    while current_p**2 < limit
        prime_seive.each do |value|
            prime_seive.delete(value) if value != current_p and value % current_p == 0
        end
        current_p = prime_seive.find{|x| x > current_p}
        puts prime_seive.length
    end
    return prime_seive
end
time_begin = Time.now()
puts primes(10000).reduce(0, :+)
puts Time.now() - time_begin