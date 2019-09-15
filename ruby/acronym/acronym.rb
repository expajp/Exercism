class Acronym
  class << self
    def abbreviate(str)
      str.scan(/[A-Za-z0-9]+/).map{ |word| word[0].upcase }.join
    end
  end
end
