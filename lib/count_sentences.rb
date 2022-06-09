require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    word_array=self.split(/[.!?]/).filter {|word| word.length>0}
    word_array.length
  end
end
c=String.new('Hello.')
