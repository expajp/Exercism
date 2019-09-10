class ResistorColorDuo
  COLORS = %w(black brown red orange yellow green blue violet grey white)
  
  ACCEPTABLE_COLORS = 2
  class << self
    def value(color_names)
      colors = color_names[0..ACCEPTABLE_COLORS-1].map{ |name| (COLORS.map.with_index{ |color, i| [color, i] }.to_h)[name] }
      reversed_powers_of_ten = (0..ACCEPTABLE_COLORS-1).to_a.map{ |m| 10**m }.reverse

      reversed_powers_of_ten.zip(colors.map(&:to_i)).map{ |n| n.inject(&:*)}.sum
    end
  end
end