class Game

  attr_reader :started

  def start
    @started = true
    @finished = false;
  end

  def started?
    self.started || false
  end

  def finished?
    @finished
  end

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if (left == :rock && right == :scissors || left == :scissors && right == :rock)
      @finished = true
      "Rock beats scissors!"
    elsif (left == :paper && right == :rock || left == :rock && right == :paper)
      @finished = true
      "Paper beats rock!"
    elsif (left == :scissors && right == :paper || left == :paper && right == :scissors)
      @finished = true
      "Scissors beats paper!"
    elsif (left == right)
      "Tie game. Try again!"  
    else
      :UNKNOWN
    end
  end

end