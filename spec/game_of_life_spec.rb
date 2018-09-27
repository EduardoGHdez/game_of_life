require 'rspec'
require_relative '../lib/game_of_life.rb'

RSpec.describe GameOfLife do
    
    context 'when is created a new game with out size argument' do
        it 'should create a game with a 10 size board' do
            game = GameOfLife.new
            expect(game.board.size).to eq 10            
        end
    end

    context 'when is created a new game with size argument' do
        it 'should create a game with a correct size board' do
            game = GameOfLife.new(size: 100)
            expect(game.board.size).to eq 100            
        end
    end

    describe '#randomCell' do
        it 'should select a random cell in the board limits to change its state to 1
            and return row and col' do
            game = GameOfLife.new(size:30)
            expect(game.randomCell).to contain_exactly(Integer, Integer)
            #have_attributes(:row=>Integer, :col=> Integer)
        end
    end

    describe '#tick' do
        context 'it applies all game of life rules (http://web.stanford.edu/~cdebs/GameOfLife/)' do
            it 'should return how many cells are died and how many are alive' do
                game = GameOfLife.new
                #I expect 100 dead cells, because actual any cell is alive. Then, when i tick, there i no one cell to alive
                #100 because the board has a 10*10 size by default
                expect(game.tick).to eq [100,0]            
            end
        end
    end

    describe '#selectCell' do
        it 'should invert a cell state (0 or 1) chosen by row and col arguments' do
            game = GameOfLife.new           
            expect(game.selectCell(row:5, col:5)).to eq 1
            expect(game.selectCell(row:5, col:5)).to eq 0
        end
    end
 
end