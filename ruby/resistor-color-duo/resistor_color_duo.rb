class Array
  def product
    self.inject(:*)
  end
end

class ResistorColorDuo
  class Color
    COLORS = %w(black brown red orange yellow green blue violet grey white)

    def initialize(name)
      @name = name
    end

    def to_i
      return nil unless COLORS.include?(@name)
      name_to_int = COLORS.map.with_index{ |color, i| [color, i] }.to_h
      name_to_int[@name]
    end
  end
  
  ACCEPTABLE_COLORS = 2
  class << self
    def value(color_names)
      colors = color_names[0..ACCEPTABLE_COLORS-1].map{ |name| Color.new(name) }
      reversed_powers_of_ten = powers_of_ten(ACCEPTABLE_COLORS).reverse

      reversed_powers_of_ten.zip(colors.map(&:to_i)).map(&:product).sum
    end

    private
  
    def powers_of_ten(n)
      (0..n-1).to_a.map{ |m| 10**m }
    end
  end
end