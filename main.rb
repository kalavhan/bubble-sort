# frozen_string_literal: false

def bubble_sort(array)
  array.each do
    array.each_with_index do |_value, index|
      break unless array[index + 1]
      next if array[index] < array[index + 1]

      lesser = array[index + 1]
      array[index + 1] = array[index]
      array[index] = lesser
    end
  end
  array
end
