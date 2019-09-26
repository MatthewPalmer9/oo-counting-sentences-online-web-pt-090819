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
    newArray = self.split()
    count = 0 
    newArray.map(){|i| 
      count += 1 if i.end_with?(".") || i.end_with?("?") || i.end_with?("!")
    }
    return count 
  end
end