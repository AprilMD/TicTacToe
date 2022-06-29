require_relative '../tictactoe.rb'

describe 'tictactoe game'
    describe 'tictactoe board' do
        it 'shows a 3x3 grid' do
            game = TicTacToe.new
            expect(game.board).to eq([['-','-','-'],['-','-','-'],['-','-','-']])
        end
    end

    describe 'player 1 turn' do
        it 'turns the first cell to an X when given [1,1]' do
            game = TicTacToe.new
            game.player_1_turn(1,1)
            expect(game.new_board[0][0]).to eq('X')
        end
    end

    


