# Write a Ruby method called: is_prime. The function must take a number n and it should return true or false whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.

def is_prime (n)

 if n.is_a? Integer

  if n > 1
    i = 2
   while i <= Math.sqrt(n)
     if n % i == 0
        i += 1
        false
     else
       true
     end
   end
  else
   false
  end

  else
    false
  end
end

is_prime(2)
