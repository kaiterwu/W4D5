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
    
end 