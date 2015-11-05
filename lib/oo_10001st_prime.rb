# Implement your object-oriented solution here!
class Prime
  def initialize(nth_element)
    @prime_array = [2,3]
    @index = nth_element
  end

  def number
    counter = 4
    if @index == 1 || @index == 2 
      return @prime_array[@index - 1]
    end
    while @prime_array.length < @index
      if [*2..Math.sqrt(counter)].all? {|element| counter%element != 0} == true 
        @prime_array.push(counter)
      end
      counter += 1
    end
    @prime_array[@index-1]
  end
end