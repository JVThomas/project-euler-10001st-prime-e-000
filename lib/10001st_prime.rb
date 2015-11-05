# Implement your procedural solution here!
def prime_number_for(nth_element)
  prime_array = [2,3]
  counter = 4
  prime_check = false
  if nth_element == 1 || nth_element == 2 
    return prime_array[nth_element - 1]
  end
  while prime_array.length < nth_element
    if [*2..Math.sqrt(counter)].all? {|element| counter%element != 0} == true 
      prime_array.push(counter)
    end
    counter += 1
  end
  prime_array[nth_element-1]
end
