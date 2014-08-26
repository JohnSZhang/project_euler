def common_product(range)
    upper_bound = range.inject(1) { |product, num| product * num }
    (20..upper_bound).step(20).each do |value| 
        return value if    range.to_a.all? {|num| value%num == 0 }
    end
end

puts common_product((1..20))