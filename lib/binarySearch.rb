def binarySearch(array, n)
  min = 0
  max = array.length-1
  guess = ((min+max)/2).floor

  while array[guess] != n do
    if max <= min
      puts -1
      return
    end

    if array[guess] > n
      max = guess -1
    elsif array[guess] < n
      min = guess +1
    end

    guess = ((min+max)/2).floor
  end

  puts guess
  return
end

nums = [7, 10, 20, 30, 40, 50, 60]
nums2 = [1,2,3,4,5,6]
binarySearch(nums, 15)
binarySearch(nums2, 4)
# binarySearch(nums, 10)
# binarySearch(nums, 50)
