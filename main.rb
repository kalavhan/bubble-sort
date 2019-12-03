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

array = [35, 9, 7, 13, 1, 36, 2, 83, 10]

p bubble_sort(array)

new_array = %w[Hey Hello Hi]

p bubble_sort_by(new_array) { |left, right| left.length - right.length }
