class TicTacToe
    attr_accessor :board
    attr_accessor :new_board
    
    def initialize()
        @board = [["-","-","-"],["-","-","-"],["-","-","-"]]
    end

    def player_1_turn(row,column)
        @new_board = @board
        @new_board[(row-1)][(column-1)] = "X"
        print @new_board
    end

end