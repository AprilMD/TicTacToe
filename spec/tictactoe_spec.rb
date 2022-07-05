require_relative '../tictactoe.rb'
require 'stringio'


describe 'tictactoe game'
    describe 'tictactoe board' do
        it 'shows a 3x3 grid' do
            game = TicTacToe.new
            expect(game.board).to eq([['-','-','-'],['-','-','-'],['-','-','-']])
        end
    end

    describe 'gets player input' do
        it 'returns coordinates taken from' do
            game = TicTacToe.new
            $stdin = StringIO.new("2,2") # just automates putting user input into the terminal
            expect(game.ask_player_position).to eq("2,2")
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


