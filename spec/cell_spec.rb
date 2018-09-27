require 'rspec'
require_relative '../lib/cell.rb'

RSpec.describe Cell do
    describe '#initialize' do
        context 'when is created a new cell' do
            it 'should have its two attribute equal to nil' do
                cell = Cell.new
                expect(cell.actual_state).to eq nil
                expect(cell.next_state).to eq nil
            end
        end
    end
end