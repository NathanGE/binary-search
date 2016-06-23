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
