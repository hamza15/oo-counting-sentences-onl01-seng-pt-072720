require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    if self == ""
      return 0 
    end
    count = 1 
    i = 0
    final = self.chars
    while i < final.length
      if final[i] == "."
        if final[i+1] == " "
          count += 1
        end 
      elsif final[i] == "!"    
        if final[i+1] == " "
          count += 1
        end 
      elsif final[i] == "?"    
        if final[i+1] == " "
          count += 1
        end
      end
      i += 1 
    end
    count
  end
end