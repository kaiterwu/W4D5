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
        str2=str2.delete(char)
    end 
    str2.empty?
end 

def third_anagram(str1,str2)
    str1.split("").sort == str2.split("").sort 
end 

def fourth_anagram(str1,str2)
    hasher(str1) == hasher(str2)
end 

def hasher(str)
    hash = Hash.new(0)
    str.each_char{|char|hash[char]+=1}
    hash 
end 

def bonus_anagram(str1,str2)
    hash = Hash.new(0)
    str1.each_char{|char|hash[char]+=1}
    str2.each_char{|char|hash[char]+=1}
    hash.values.all?{|ele|ele.even?}
end 