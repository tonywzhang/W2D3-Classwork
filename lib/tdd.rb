class Array
  
  def my_uniq
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end
  
  def two_sum
    result = []
    
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        if idx2 > idx1
          result << [idx1, idx2] if (el1 + el2) == 0
        end
      end
    end
    result
    
  end
  
  def my_transpose
    indices_hash = Hash.new {|h,k| h[k] = []}
    
    self.each_with_index do |row, row_idx|
      row.each_with_index do |el,col_idx|
        indices_hash[col_idx] << el
      end
    end
    
    indices_hash.values
  end
  
  
  def stock_picker
    good_days = nil
    great_val = 0
    
    self.each_with_index do |el1, i|
      self.each_with_index do |el2, j|
        if (el2 - el1) > great_val && j > i
          good_days = [i, j]
          great_val = el2 - el1
        end
      end
    end
    
    good_days
  end 
end