class Array
  def even_search
    arr = []
    self.each do |x|
      arr << x if (x.to_f%2==0 && yield(x))
    end
    return arr
  end
end