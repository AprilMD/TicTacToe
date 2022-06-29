class TicTacToe
    attr_accessor :board
    attr_accessor :new_board
    
    def initialize()
        @board = [["-","-","-"],["-","-","-"],["-","-","-"]]
    end

    def player_1_turn(x_axis,y_axis)
        @new_board = @board
        @new_board[(x_axis-1)][(y_axis-1)] = "X"
        print @new_board
    end

end