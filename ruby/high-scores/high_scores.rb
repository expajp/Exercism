class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end
  
  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    sorted = @scores.sort.reverse
    sorted[0..2] || sorted[0..1] || [sorted[0]]
  end
  
  def latest_is_personal_best?
    latest == personal_best
  end
end
