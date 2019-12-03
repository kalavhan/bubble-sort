# frozen_string_literal: false

def bubble_sort(array)
  counter = array.length - 1
  array.each do
    index = 0
    while index < counter
      array[index], array[index + 1] = array[index + 1], array[index] if array[index] > array[index + 1]
      index += 1
    end
    counter -= 1
  end
  array
end

def bubble_sort_by(array)
  counter = array.length - 1
  array.each do
    index = 0
    while index < counter
      array[index], array[index + 1] = array[index + 1], array[index] if yield(array[index], array[index + 1]).positive?
      index += 1
    end
    counter -= 1
  end
  array
end
