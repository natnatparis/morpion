# frozen_string_literal: true

# Process game between two players
class Game
    # Class variables
    attr_accessor :player1
    attr_accessor :player2
    attr_accessor :choices
  
    def initialize(player1, player2)
      # Class constructor
      @choices = ['A1', 'A2', 'A3', 'B1', 'B2', 'B3', 'C1', 'C2', 'C3']
      @player1 = player1
      @player2 = player2
      @board = Board.new
      puts "\nC'est parti !"
      puts ''
      i = 3
      3.times do # Timer
        puts i
        sleep 1
        i -= 1
      end
      perform_duel
      ending
    end
  
    def ending
      # Displays final message to conclude the game
      # No return
      system('clear')
      GraphicBoard.new(@board)
      if @board.who_win == @player1.sign.uncolorize
        player1.wins += 1
        puts "\nC'est une victoire pour #{@player1.name} !"
      elsif @board.who_win == @player2.sign.uncolorize
        player2.wins += 1
        puts "\nC'est une victoire pour #{@player2.name} !"
      else
        puts "\nMatch nul !".colorize(:green)
      end
    end
  
    def perform_duel
      # Process the game's core
      # No return
      loop do
        # Player1's turn
        system('clear')
        GraphicBoard.new(@board)
        puts "\n#{@player1.name}, c'est ton tour de jouer !"
        puts "quelle case veux-tu remplir ? [ex : A1]"
        @board.fill_case(choice, @player1.sign)
        break if @board.line? || @board.full?
  
        # Player2's turn
        system('clear')
        GraphicBoard.new(@board)
        puts "\n#{@player2.name}, c'est ton tour de jouer !"
        puts "quelle case veux-tu remplir ? [ex : A1]"
        @board.fill_case(choice, @player2.sign)
        break if @board.line? || @board.full?
      end
    end
  
    def choice
      # Allows user to choose action and returns the choice
      # Returns a string
      print '> '
      position = gets.chomp
      until @choices.include?(position)
        puts "\nEntre le numéro d'une case libre."
        print '> '
        position = gets.chomp
      end
      @choices.delete(position) # Removes choice from possible actions
      position
    end
  end
  