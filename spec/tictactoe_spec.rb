require_relative '../tictactoe.rb'

describe 'tictactoe game'
    describe 'tictactoe board' do
        it 'shows a 3x3 grid' do
            game = TicTacToe.new
            expect(game.board).to eq([['-','-','-'],['-','-','-'],['-','-','-']])
        end
    end

    describe 'player 1 turn' do
        it 'turns the cell in the first row and first column to an X when given [1,1]' do
            game = TicTacToe.new
            game.player_1_turn(1,1)
            expect(game.new_board[0][0]).to eq('X')
        end
    

    # describe 'player 1 turn' do
        it 'turns the cell in the first row and second column to an X when given [1,2]' do
            game = TicTacToe.new
            game.player_1_turn(1,2)
            expect(game.new_board[0][1]).to eq('X')
        end

        it 'turns the cell in third row and third column to an X when given [3,3]' do
            game = TicTacToe.new
            game.player_1_turn(3,3)
            expect(game.new_board[2][2]).to eq('X')
        end
end




