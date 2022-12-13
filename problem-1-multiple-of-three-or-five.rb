def find_multiple_sum(multiple_list, below_number)
  multiples = []
  (0...below_number).each do |number|
    multiple_list.each do |multiple|
      if number % multiple == 0
        multiples << number 
        break
      end
    end
  end
  multiples.sum
end

# find_multiple_sum(multiple_list = [3, 5], below_number = 1000)
# --> 233168