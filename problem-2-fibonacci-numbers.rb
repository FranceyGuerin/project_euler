def fibonacci_sequence(maximum_integer)
  fibonacci_sequence = [0, 1]
  while fibonacci_sequence[-1] < maximum_integer do
    fibonacci_sequence << fibonacci_sequence[-2] + fibonacci_sequence[-1]
  end

  fibonacci_sequence.reject! { |integer| integer > maximum_integer }

  fibonacci_sequence
end

def even_numbers(integer_array)
  integer_array.select { |integer| integer % 2 == 0 }
end

def find_even_fibonacci_sequence_sum(maximum_integer)
  sequence = fibonacci_sequence(maximum_integer)
  even = even_numbers(sequence)
  even.sum
end

# find_even_fibonacci_sequence_sum(4000000)
# --> 4613732