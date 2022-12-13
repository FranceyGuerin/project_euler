
def prime_number?(possible_prime, primes)
  return false if primes.any? { |prime| possible_prime % prime == 0 }
  true
end

def factor?(prime, target_integer)
  target_integer % prime == 0
end

def find_factors(target_integer)
  current_integer = 1
  primes = []
  factors = []

  break_point = target_integer / 2

  while current_integer < break_point
    current_integer += 1
    if prime_number?(current_integer, primes)
      primes << current_integer
      factors << current_integer if factor?(current_integer, target_integer)
    else
      next
    end
  end

  factors
end

factors = find_factors(10) 
factors.max

# this method isn't very efficient.  It works on lower target_numbers but isn't finishing calculating for the large number given in the problem. I'm sure there's some tricks I can use to speed it up.
# Prime numbers can only be divided by one and itself
# To find the next prime number
### for each integer,  iterate through already discovered primes, breaking if (prime % possible_prime == 0). 
### add the possible_prime to primes if every prime has been checked and none are factors of the current number
### then check if the new prime is a factor of the original number (original_number % prime == 0)
### if so, add to list of factors
### repeat until the current integer * 2 >= original integer as this is the largest theoretical prime


# alternate method:
# find full set of factors and then check if those are primes
# divide the target_integer by 2, 3, 4, 5, 6 etc. until the result is greater than target_number > 2