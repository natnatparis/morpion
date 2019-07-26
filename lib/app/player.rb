# frozen_string_literal: true

# Process player's moves and status
class Player
    # Class variables
    attr_accessor :wins
    attr_accessor :name
    attr_accessor :sign
  
    def initialize(name)
      # Class constructor
      @name = name
      @wins = 0
    end
  end
  