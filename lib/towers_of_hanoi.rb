require 'byebug'

class Board
  
  attr_reader :towers
  
  def initialize
    @towers = [[3,2,1],[],[]]
  end
  
  def move(moves)
    # debugger
    unless valid_move?(moves)
      print 1
      raise ArgumentError
    end
    start, fini = moves
    
    towers[fini] << towers[start].pop
  end
  
  def won?
    towers[1].length == 3 || towers[2].length == 3
  end
  
  private
  def valid_move?(moves)
    start, fini = moves
    return false if towers[start].empty?
    return true if towers[fini].empty? 
    towers[fini].last > towers[start].last ? true : false 
  end
  
end