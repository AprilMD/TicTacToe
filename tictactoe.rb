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

    def start_game
        puts "welcome to our game. *******"
        ask_player_input
    end

    def ask_player_input
        puts "row?"
        @row = gets.chomp.to_i
        puts "column?"
        @column = gets.chomp.to_i
        
        if check_input_validity(@row, @column) == false
            puts 'input is invalid. Please try again'
            ask_player_input
        else 
            @coordinate_message = "these are your coords: #{@row}, #{@column}"
            puts @coordinate_message
            player_turn(@row, @column)
        end
    end

    def check_cell_is_available(row, column)
        if @board[(row-1)][(column-1)] == "-"
            true
        else
            print 'cell already occupied. choose another.'
            false
        end
    end

    def player_turn(row,column)
        if check_cell_is_available(row,column) && @turn_count % 2 == 0
            @board[(row-1)][(column-1)] = "X"
            @turn_count += 1
            print @board
        elsif check_cell_is_available(row,column) && @turn_count % 2 != 0
            @board[(row-1)][(column-1)] = "0"
            @turn_count += 1
            print @board
        else 
            ask_player_input
        end
    end
              
    def check_input_validity(row, column)
        if (row > 3) || (column > 3)
            false
        else
            true
        end
    end

end

# game = TicTacToe.new
# game.ask_player_input