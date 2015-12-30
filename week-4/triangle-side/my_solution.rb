# I worked on this challenge with Cody Kendall


# Your Solution Below

def valid_triangle?(a, b, c)
  return false if a == 0 || b == 0 || c == 0
  if (a + b >= c) && (a + c >= b) && (b + c >= a)
  	true
  end
end
