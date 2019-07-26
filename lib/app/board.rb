# frozen_string_literal: true

# Process board state in the game
class Board
    # Class variables
    attr_accessor :case_state
  
    def initialize
      # Class constructor
      # Setup an empty board
      @case_state = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end
  
    def full?
      # Provides info about the board ; even game if board is full
      # Returns boolean
      i = 0
      @case_state.each { |c| i += 1 if c != ' ' }
      i == 9
    end
  
    def line?
      # Provides info about the board ; game ends if a line is full
      # Returns boolean
      winning_line != nil
    end
  
    def who_win
      # Provides info about the board ; which sign is the winner ?
      # Returns a string ; "X" or "O"
      !winning_line.nil? ? winning_line[0] : nil
    end
  
    def winning_line
      # Provides info about the board ; is a lign full ? which line ?
      # Returns a string ; line which ended game
      res = nil
      lines = []
      line1 = [@case_state[0], @case_state[1], @case_state[2]]
      line2 = [@case_state[3], @case_state[4], @case_state[5]]
      line3 = [@case_state[6], @case_state[7], @case_state[8]]
      line4 = [@case_state[0], @case_state[3], @case_state[6]]
      line5 = [@case_state[1], @case_state[4], @case_state[7]]
      line6 = [@case_state[2], @case_state[5], @case_state[8]]
      line7 = [@case_state[0], @case_state[4], @case_state[8]]
      line8 = [@case_state[2], @case_state[4], @case_state[6]]
      lines << line1 << line2 << line3 << line4 << line5 << line6 << line7 << line8
      lines.each do |i|
        i.map! { |n| n.uncolorize }
        res = i if i == ['O', 'O', 'O'] || i == ['X', 'X', 'X']
      end
      res
    end
  
    def fill_case(choice, sign)
      # Fills a board case according to user's choice, and a defined sign ("X" or "O")
      # No return
      case choice
      when 'A1' then @case_state[0] = sign
      when 'B1' then @case_state[1] = sign
      when 'C1' then @case_state[2] = sign
      when 'A2' then @case_state[3] = sign
      when 'B2' then @case_state[4] = sign
      when 'C2' then @case_state[5] = sign
      when 'A3' then @case_state[6] = sign
      when 'B3' then @case_state[7] = sign
      when 'C3' then @case_state[8] = sign
      end
    end
  end
  