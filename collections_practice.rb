def begins_with_r(array)
  array.all? {|element| element.start_with?("r")}
end

def contain_a(array)
  array.select {|element| element.include?("a")}
end

def first_wa(array)
  array.each do |element|
  	if element.is_a? String
      if element.start_with?("wa")
          return element
  	  end
    end
  nil
  end
end

def remove_non_strings(array)
  result = []
  array.each do |element|
    if element.is_a? String
      result << element
    end
  end
  result
end

def count_elements(array)
  result = []
  array_no_repeat = array.uniq
  array_no_repeat.each do |element|
    element[:count] = array.count(element)
    result << element
  end
  result
end

def merge_data(data1, data2)
  result = []
  data1.each do |element|
  	name = element[:first_name]
	data2.each do |n|
	  info = n[name]
  	  result << element.merge(info)
	end
  end
  result 
end

def find_cool(cool)
  result = []
  cool.each do |element|
	if element[:temperature] == "cool"
	  result << element
	end
  end
  result
end

def organize_schools(schools)
  #make an array of schools
  #make an array of keys first so we can access location
  # school_names = schools.keys
  # locations = []
  # school_names.each do |school|
  # 	locations << schools[school][:location]
  # end
  # locations.uniq!

  # locations.each do |location|
  #   #create a hash with key corresponding to location
  #   #property of the hash will be an array containing all schools at given location
  #     schools.each do |school, location|
        
  #     end
  # end
  temp = []
  schools.each do |school, location|
  	temp << [school, location[:location]]
  end
  
  locations = []
  temp.each do |school|
  	locations << school[1]
  end
  locations.uniq!
  result = {}
  locations.each do |location|
  	result[location] = []
  	temp.each do |school|
  	  if school.include? location
  	  	result[location] << school[0]
  	  end
  	end
  end
  result
end
