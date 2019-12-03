# frozen_string_literal: false

def bubble_sort(array)
  counter = array.length - 1
  array.each do
    index = 0
    extra_counter = counter
    while index < extra_counter
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
      end
      index += 1
    end
    counter -=1
  end
  array
end

array = [35, 9, 7, 13, 1, 36, 2, 83, 10]
p bubble_sort(array)