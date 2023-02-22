require_relative "input.rb"

class Simon
  COLORS = %w(red blue green yellow)
  include UserInput

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end 
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
      if @game_over == false 
        round_success_message
        @sequence_length += 1
      end
  end

  def show_sequence
    add_random_color
    puts @seq.join(" ")
    puts "------------------------"
  end

  def require_sequence
    input_seq = [] 
    puts "Press the keys in order!"
    puts "r = red, b = blue, g = green, y = yellow"
    puts "------------------------"
    until input_seq.length == @seq.length
      input = gets.chomp 
      puts KEYMAP[input]
      puts
      input_seq << KEYMAP[input]
    end 
    if correct_seq?(@seq, input_seq)
      @game_over = false
    else  
      @game_over = true
    end
  end

  def correct_seq?(seq, user_seq)
    seq.each_with_index do |color1, idx1|
      user_seq.each_with_index do |color2, idx2| 
        if color1 != color2 && idx1 == idx2 
          return false
        end
      end
    end
    true
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Success!"
  end

  def game_over_message
    puts "Game Over"
  end

  def reset_game
    @sequence_length = 1 
    @game_over = false 
    @seq = []
  end
end

simon = Simon.new 
simon.play