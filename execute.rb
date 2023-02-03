def my_min(list)
    min = 0 
    list.each do |ele1|
        min = ele1 
        list.each do |ele2|
           min = ele2 if ele2 < min 
           #[1,2,3,4]
        end 
    end 
    min  
end 

#time complexity is n^2 

def my_min2(list)
    min = list[0]
    list.each do |ele| 
       min = ele if ele < min 
    end 
    min 
end 

def largest_contiguous_subsum(arr)
    results=[] 
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            results << arr[i..j]
        end 
    end 
    results.max{|a,b|a.sum <=>b.sum}.sum

end 

def largest_contiguous_subsum_2(arr)
    #O(n) time and O(1) space 
    #variable to store largest sum so far 
    #variable to store "current" sum 
    largest_sum = arr[0]
    current_sum = 0
    arr.each do |ele|
        current_sum += ele
        if current_sum > largest_sum
            largest_sum = current_sum
        elsif current_sum < 0
            current_sum = 0
        end
    end
    largest_sum
end 

p largest_contiguous_subsum_2([5, 3, -7])
p largest_contiguous_subsum_2([2, 3, -6, 7, -6, 7])
p largest_contiguous_subsum_2([-5, -1, -3])