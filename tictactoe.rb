require 'stringio'

class TicTacToe
    attr_accessor :board
    # attr_accessor :new_board
    
    def initialize()
        @board = [["-","-","-"],["-","-","-"],["-","-","-"]]
    end

    def ask_player_position
        puts "give us your coordinates in this format: row,column"
        @coords_given =  $stdin.gets.chomp

        #player_1_turn(coords_given)
        # convert from string to integers
    end

    def player_1_turn(row,column)
        if @board[(row-1)][(column-1)] == "-" 
            @board[(row-1)][(column-1)] = "X"
            print @board
        else 
            print 'cell already occupied. choose another.'
        end
        
    end

end
