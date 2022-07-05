require 'stringio'

class TicTacToe
    attr_accessor :board
    attr_accessor :turn_count

    def initialize()
        @board = [["-","-","-"],["-","-","-"],["-","-","-"]]
        @turn_count = 0
    end

    def ask_player_position
        puts "give us your coordinates in this format: row,column"
        @coords_given =  $stdin.gets.chomp
        #player_1_turn(coords_given)
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
        end
        
    end

end
