file = File.open("factors-001.in") #file same location "factors-002.in"
file_data = file.readlines.map(&:chomp) 
 
def prime?(num)
  
    if num < 2
        return false
    end
    (2...num).map do |ele|
        if num % ele == 0 
            return false
        end
    end
    return true
end
  
def prime_factors(num)
  
  prime_facts = []
  
  (1..num).map do |i|
      if  num % i == 0 && prime?(i)
          prime_facts << i
          
      end
  end
    return prime_facts
end 

n = file_data.map(&:to_i)
prime_facts_data = n.map  do |number|
    "#{number} #{prime_factors(number).first} #{prime_factors(number).last}"
end

IO.write("factors-001.ans", prime_facts_data.join("\n"))


