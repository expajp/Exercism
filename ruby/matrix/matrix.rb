class Matrix
  attr_reader :rows, :columns

  def initialize(str)
    @rows = str.split(/\R/).map{ |row| row.split(' ').map(&:to_i) }
    @columns = @rows.first.zip(*@rows[1..@rows.length-1])
  end
end
