require 'rspec'
require_relative '../lib/board.rb'

RSpec.describe Board do
    context 'when is created a new cell with out size especification' do
        it 'should return an Object Board with a grid of size 10' do
            expect(Board.new.grid.column_size).to eq 10
        end
    end
    context 'when is created a new cell with size especification' do
        it 'should return an Object Board with the correct size' do
            expect(Board.new(size:99).grid.column_size).to eq 99
        end
    end
    describe '#display' do
        context 'this method disp the actual state of board.' do
            it 'should return true when it ends' do
                board = Board.new
                expect(board.display).to eq true
            end
        end
    end
end