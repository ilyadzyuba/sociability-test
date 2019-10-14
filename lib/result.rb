class Result
  def initialize(score, results)
    @score = score
    @results = results
  end

  def print
    case @score
    when 0..3
      @results[0]
    when 4..8
      @results[1]
    when 9..13
      @results[2]
    when 14..18
      @results[3]
    when 19..24
      @results[4]
    when 25..29
      @results[5]
    else
      @results[6]
    end
  end
end
