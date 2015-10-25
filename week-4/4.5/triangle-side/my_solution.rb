# I worked on this challenge by myself


# Your Solution Below
def valid_triangle?(a, b, c)
  # Your code goes here!
  array_triangle = [a,b,c]
  array_triangle = array_triangle.sort
  if a == 0 || b == 0 || c == 0
  	 puts "false, because a triangle can't have 0-length sides"
  	 return false
  elsif a == b && b == c
  	puts "true , an equilateral triangle"
  	return true
  elsif array_triangle[0]**2 + array_triangle[1]**2 == array_triangle[2]**2
  	puts "true , a right triangle"
  	return true
  elsif a + b > c && a + c > b && b + c > a
  	puts "true, a legitimate triangle"
  	return true
  else
  	puts "false, no such triangle exists"
  	return false
  end
end
