class Acronym
  class << self
    def abbreviate(str)
      str = str.gsub(/[^A-Za-z0-9 \-]/, '')
      words = str.split(/[ \-]/).reject{ |word| word.nil? || word == "" }
      words.map{ |word| word[0].upcase }.join
    end
  end
end
