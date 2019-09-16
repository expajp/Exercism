class Acronym
  class << self
    def abbreviate(str)
      str.scan(/\b[A-Za-z0-9]+/).map(&:upcase).join
    end
  end
end
