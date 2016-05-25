# Binary search on a sorted array.

def binary_search(array, target)
  min = 0
  max = array.length - 1
  while max >= min
    guess = (max + min) / 2
    return guess if array[guess] == target
    if array[guess] < target
      min = guess + 1
    else
      max = guess - 1
    end
  end
  -1
end

index_of_target = binary_search([1, 3, 5, 6, 12, 14], 6)

puts "The index of the target is: #{index_of_target}"
