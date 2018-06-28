require 'rspec'
require 'towers_of_hanoi'
require 'byebug'

RSpec.describe do
  
  describe '#move' do
    let(:board) { Board.new }
  
    
    before(:each) do
      board.move([0,1])
    end
    
    describe 'if moving from empty array' do

      it 'should return nil' do
        expect {board.move([2,0])}.to raise_error ArgumentError
      end
      
    end
  
    
    
    it 'should move successfully' do
      expect(board.towers).to eq([[3,2],[1],[]])
    end    
  end
  
  describe '#won?' do
    let(:board) {Board.new} 
    describe 'if game over' do
  
      before(:each) do 
        board.move([0,1])
        board.move([0,2])
        board.move([1,2])
        board.move([0,1])
        board.move([2,0])
        board.move([2,1])
        board.move([0,1])
      end
  
      it 'should return true' do
        expect(board.won?).to be true
      end
    end
  
    describe 'if game not over' do
      it 'should return false' do
        expect(board.won?).to be false
      end
    end
  end
end
