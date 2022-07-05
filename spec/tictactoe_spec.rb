require_relative '../tictactoe.rb'
require 'stringio'


describe 'tictactoe game'
    describe 'tictactoe board' do
        it 'shows a 3x3 grid' do
            game = TicTacToe.new
            expect(game.board).to eq([['-','-','-'],['-','-','-'],['-','-','-']])
        end
    end

    describe 'ask player for input' do
        it 'prints relevant coordinate message' do
            game = TicTacToe.new
            game.ask_player_input
            expect(game.coordinate_message).to eq("these are your coords: #{game.row}, #{game.column}")
        end
        it 'returns true if input is valid' do
            game = TicTacToe.new
            expect(game.check_input_validity(1, 2)).to be(true)
        end
        it 'returns false if it is invalid' do
            game = TicTacToe.new
            expect(game.check_input_validity(6, 2)).to be(false)
        end
    end

    describe 'player turn' do
        it 'turns the cell in the first row and first column to an X when given [1,1] when turn count is 0' do
            game = TicTacToe.new
            game.player_turn(1,1)
            expect(game.board[0][0]).to eq('X')
        end

        it 'turns the cell in the first row and second column to an X when given [1,2] when turn count is 0' do
            game = TicTacToe.new
            game.player_turn(1,2)
            expect(game.board[0][1]).to eq('X')
        end

        it 'turns the cell in third row and third column to an X when given [3,3] when turn count is 0' do
            game = TicTacToe.new
            game.player_turn(3,3)
            expect(game.board[2][2]).to eq('X')
        end

        it 'turns the cell in the first row and second column to an X when given [1,2] when turn count is even' do
            game = TicTacToe.new
            game.turn_count += 2
            game.player_turn(1,2)
            expect(game.board[0][1]).to eq('X')
        end

        it 'turns the cell in third row and third column to an X when given [3,3] and with an odd turncount' do
            game = TicTacToe.new
            game.turn_count += 1
            game.player_turn(3,3)
            expect(game.board[2][2]).to eq('0')
        end
    end


    

    # describe 'check if cell is occupied' do
    #     it 'should not allow a player to use an occupied cell' do
    #         game = TicTacToe.new
    #         game.player_1_turn(3,3)
    #         expect {game.player_1_turn(3,3)}.to output("cell already occupied. choose another.").to_stdout
    #     end
    # end


