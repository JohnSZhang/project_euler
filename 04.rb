def largest_palindrome(num)
    num_1 = 10**num - 1
    num_2 = 10**num - 1
    pali_arr = []
    while num_1 > 10**(num-1) - 1
        while num_2 > 10**(num-1) - 1
            if is_palidrome?(num_1*num_2) then pali_arr << (num_1*num_2) end
            num_2 -= 1
        end
        num_2 = 10**num - 1
        num_1 -= 1
    end
    return pali_arr.max
end
def is_palidrome?(num)
    num.to_s.reverse == num.to_s ? (return true) : (return false)
end

p largest_palindrome(3)