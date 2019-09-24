class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end
  
  def latest
    @scores.last
  end

  def personal_best
    descending_scores.first
  end

  def personal_top_three
    descending_scores.take(3)
  end
  
  def latest_is_personal_best?
    latest == personal_best
  end

  private

  def descending_scores
    @scores.sort { |a, b| b <=> a }
  end
end
