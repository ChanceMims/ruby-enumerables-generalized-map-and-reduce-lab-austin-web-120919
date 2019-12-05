# Your Code Here
def generalized_map(source_array)
  result_array = []
  counter_index = 0
  while counter_index < source_array.length do
    result_array << yield(source_array[counter_index])
    counter_index += 1
  end
  return result_array
end

def generalized_redux(source_array, starting_value = 0)
  array_total = starting_value
  counter_index = 0
  while counter_index < source_array.length do
    array_total += yield(source_array[counter_index])
    counter_index += 1
  end
end