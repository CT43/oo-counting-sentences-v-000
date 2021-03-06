require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    self.split('.').join("!").split("!").join("?").split("?").reject { |c| c.empty? }.size
  end
end
