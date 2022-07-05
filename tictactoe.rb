require 'stringio'

class TicTacToe
    attr_accessor :board
    attr_accessor :turn_count
    attr_accessor :row
    attr_accessor :column
    attr_accessor :coordinate_message

    def initialize()
        @board = [["-","-","-"],["-","-","-"],["-","-","-"]]
        @turn_count = 0
    end

    def ask_player_input
        puts "row?"
        @row = gets.chomp.to_i
        puts "column?"
        @column = gets.chomp.to_i
        @coordinate_message = "these are your coords: #{@row}, #{@column}"
        puts @coordinate_message
        player_turn(@row, @column)
        # player_turn(coords_given)
        # convert from string to integers
    end

    def player_turn(row,column)
        if @board[(row-1)][(column-1)] == "-" && @turn_count % 2 == 0
            @board[(row-1)][(column-1)] = "X"
            @turn_count += 1
            print @board
        elsif @board[(row-1)][(column-1)] == "-" && @turn_count % 2 != 0
            @board[(row-1)][(column-1)] = "0"
            @turn_count += 1
            print @board
        else 
            print 'cell already occupied. choose another.'
            ask_player_input
        end
        
    end

end

# game = TicTacToe.new
# game.ask_player_input