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

  def count_sentences(sentence)
    newArray = self.split()
    count = 0 
    newArray.each(){|i| 
      count += 1 if i.include?("." || "?" ||"!")
    }
    return count 
  end
end