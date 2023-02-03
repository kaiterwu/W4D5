def first_anagram(str,str2)
    arr = [] 
    word = str.split("")
    while arr.length < factorial(str.length)
        temp = word.shuffle 
        joined = temp.join("")
        arr << joined if !arr.include?(joined)
    end 
    arr.any?{|anagram|str2 == anagram}     
end 

def factorial(num)
    product = 1 
    (1..num).each {|number|product *= number}
    product
end 

def second_anagram(str1,str2)
    str1.each_char do |char| 
        return false if str2.index(char).nil? 
        idx = str2.index(char)
        str2.delete(char)
    end 
    str2.empty? 
end 