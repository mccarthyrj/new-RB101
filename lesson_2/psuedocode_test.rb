# pseudo

def merge(array1, array2)
  merged_arrays = []
  iterator = 0
  until iterator == array1.size
    merged_arrays << array1[iterator]
    merged_arrays << array2[iterator]
    iterator += 1
  end
  merged_arrays
end


odd = [1, 3, 5]
even = [2, 4, 6]

p merge(odd, even)
