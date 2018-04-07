def sort_array_asc (array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|a,b| b<=>a}
end

def sort_array_char_count(array)
  array.sort {|a,b| a.length<=>b.length}
end

def swap_elements(array)
  #There's probably a more succinct way to do this
  new_array=[]
  array.each_with_index do |name,index|
    if index != 1 && index !=2
      new_array[index]=array[index]
    elsif
      new_array[1]=array[2]
      new_array[2]=array[1]
    end
  end
  new_array
end

def swap_elements_from_to(array, index, destination_index)
  new_array=[]
  array.each_with_index do |name,counter|
    if counter != index && index != destination_index
      new_array[counter]=array[counter]
    elsif
      new_array[index]=array[destination_index]
      new_array[destination_index]=array[index]
    end
  end
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_names=[]
  array.each do |name|
    name[2]="$"
    new_names<<name
  end
  new_names
end

def find_a(array)
  array.select {|word| word.start_with?("a")}
end

def sum_array(array)

  #Cumbersome method
  #sum=0
  #array.each {|num| sum+=num}
  #sum

  #Simplified method using inject
  array.inject {|sum,number| sum+number}

end

def add_s(array)
  array.each_with_index.collect do |word,index|
    #if index != 1
      word<<"s" if index != 1
    #else
      word
    #end
  end
end
