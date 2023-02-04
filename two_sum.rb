def bad_two_sum?(arr,target_sum)
    pairs = []
    arr.each_with_index do |ele1,i|
        arr.each_with_index do |ele2,j|
            pairs << [ele1,ele2] if i < j 
        end 
    end 
    pairs.any?{|pair|pair[0] + pair[1] == target_sum}
end 

def okay_two_sum?(arr,target_sum)
    sorted = arr.sort 
    sorted.each do |ele|
        temp_arr = sorted -=[ele]
        return true if temp_arr.include?(target_sum - ele)#still O(n^2) because of include 
    end 

    return false 
end  

def two_hash_sum(arr,target_sum) # O(n) for space and time complexity 
    pairs = {} 
    arr.each do |ele| 
        return true if pairs[target_sum-ele]
        pairs[ele] = true 
    end 
    return false 
end 

def two_sum_indices(arr, target_sum) # for two indices 
    complements = {}
    arr.each_with_index do |el, i|
      complement, j = complements[target_sum - el] # these will both be nil if the complement doesn't exist
      return [i, j] if complement
  
      complements[el] = [el, i]
    end
    nil
  end