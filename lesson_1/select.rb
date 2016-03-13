def select(arr)
  counter = 0
  new_arr = []
  while counter < arr.size
    current_element = arr[counter]
    new_arr << current_element if yield(current_element)
    counter += 1
  end

  new_arr
end

array = [1, 2, 3, 4, 5]

p select(array) { |num| num.odd? }
p select(array) { |num| puts num }
p select(array) { |num| num + 1 }
