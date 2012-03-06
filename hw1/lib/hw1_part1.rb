## Part 1: fun with string
## (a)
def palindrome?(string)
s=string.gsub(/\W/,"").downcase
s==s.reverse
end

##palindrome?("A man, a plan, a canal -- Panama")  #=> true
##palindrome?("Madam, I'm Adam!")  # => true
##palindrome?("Abracadabra")  # => false (nil is also ok)

## (b)
def count_words(string)
h=Hash.new(0)
words=string.downcase.split(/\W+/)
words.each{|w| h[w]= h[w]+1} 
return h
end
