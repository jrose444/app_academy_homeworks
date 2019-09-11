class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      self.take_turn
    end
    if @game_over == true
      self.game_over_message
      self.reset_game
    end
  end

  def take_turn
    show_sequence
    require_sequence
# why does an if statement break it
    self.round_success_message
    @sequence_length += 1
  end

  def show_sequence
    @seq
    self.add_random_color
    
  end

  def require_sequence
    
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    self.sequence_length = 1
    @game_over = false
    @seq = []
  end
end
