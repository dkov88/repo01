def range_finder(range)
  arr = []
  range.each do |x|
    if x%7==3
      arr << x
    end
  end
  return arr.max
end