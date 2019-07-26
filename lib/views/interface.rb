# frozen_string_literal: true

# Runs the app with displaying user interface
class Interface
    # Class variables
    attr_accessor :player1
    attr_accessor :player2
    attr_accessor :status
  
    def initialize
      # Class constructor ; performs whole Application's process
      start
      init_players
      @status = true
      while @status == true
        @player1.sign = 'X'.colorize(:blue)
        @player2.sign = 'O'.colorize(:red)
        Game.new(@player1, @player2)
        show_score
        if continue? # Allows to switch roles between two games
          @player1.sign = 'O'.colorize(:blue)
          @player2.sign = 'X'.colorize(:red)
          Game.new(@player2, @player1)
          show_score
          continue?
        end
      end
      puts "\nMerci d'avoir joué !"
    end
  
    def init_players
      # Asks user for its name and init new Player object
      # No return
      puts '', 'Player 1'.colorize(:blue) + ' : Quel est ton nom ?'
      print '> '
      @player1 = Player.new(gets.chomp.colorize(:blue))
      puts '', 'Player 2'.colorize(:red) + ' : Quel est ton nom ?'
      print '> '
      @player2 = Player.new(gets.chomp.colorize(:red))
    end
  
    def continue?
      # Asks user if he want to play again, and updates status of the programm
      # Returns boolean assigned to @status
      rep = nil
      while rep != 'y' && rep != 'n'
        puts "\nVoulez vous jouer une autre partie ? (y/n)"
        rep = gets.chomp.downcase
      end
      rep == 'y' ? @status = true : @status = false
    end
  
    def show_score
      # Displays games results for users
      # No return
      puts "\n-----  SCORE  -----".colorize(:green)
      puts "\n#{player1.name}".colorize(:blue) + " / #{player1.wins} - " + "#{player2.wins} / " + "#{player2.name}".colorize(:red)
      puts "\n-------------------".colorize(:green)
    end
  
    def start
      # Displays welcome message
      # No return
      puts '', '  OUILLE JE GRATTE '.colorize(:red), '  SCRATCH TO WIN'
      puts '', '---------------------------------------------'
      puts '   Êtes vous prêts pour l\'affrontement ?!'
      puts '---------------------------------------------'
      puts "\nSaisissez vos noms pour commencer à jouer..."
    end
  end
  