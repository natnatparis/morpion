# frozen_string_literal: true

# Displays graphic presentation of the game board
class GraphicBoard
    # Class variables
    attr_accessor :cases_state
  
    def initialize(board_obj)
      # Class constructor ; displays graphic board
      @cases_state = board_obj.case_state
      puts '', '      A     B     C', ''
      puts '         |     |'
      puts "1     #{@cases_state[0]}  |  #{@cases_state[1]}  |  #{@cases_state[2]}"
      puts '    _____|_____|_____', '         |     |'
      puts "2     #{@cases_state[3]}  |  #{@cases_state[4]}  |  #{@cases_state[5]}"
      puts '    _____|_____|_____', '         |     |'
      puts "3     #{@cases_state[6]}  |  #{@cases_state[7]}  |  #{@cases_state[8]}"
      puts '         |     |'
    end
  end
  