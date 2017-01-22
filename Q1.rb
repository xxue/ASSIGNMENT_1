#1. Implement the following code in Ruby: Create a module called HelperMethods that include a method called titleize that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example, if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from. Then write a piece of code to demonstrate the difference between include and extend in using Ruby modules with classes to include methods. Make sure to demonstrate calling the titleize methods with your code.

module HelperMethods
  def titleize
    print "Enter a sentence"
    sentence = gets.chomp
    s = sentence.capitalize.split(" ") #in case first word belongs to the ex array
    ex = ["in", "the", "of", "and", "or", "from"]
    s.each do |word|
      if ex.include?(word)
        word
        else
          word.capitalize!
      end
    end
    p s.join(" ")
  end
end

class In
 include HelperMethods
end

class Ex
  extend HelperMethods
end

In.new.titleize #include, instance method
Ex.titleize #extend, class method
