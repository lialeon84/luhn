module Luhn
  def self.is_valid?(number)
    digits = []
    reverse = []
    
    digits = number.to_s.split("")
   
    reverse = digits.reverse
    reverse.each_with_index do | item, i | 
      if (i % 2 != 0) then 
        reverse[i] = item.to_i * 2 
        if reverse[i] >= 10 
          reverse[i] = reverse[i] - 9
        end
      end
    end

    
    sum = reverse.inject(0){|sum,x| sum + x.to_i }

    
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

