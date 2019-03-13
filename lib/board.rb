require 'pry'

class Board 
  
  attr_accessor :cells
  
  def initialize
    @cells = []
    self.reset!
  end 
  
  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " "," "]
  end 
  
  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "------------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "------------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end 
  
  def position(input)
    "#{cells[(input.to_i)-1]}"
  end
  
  def full?
    self.cells.any? {|cell| cell == " "} == false
  end 
  
  def turn_count
    self.cells.count { |cell| cell == "X" || cell == "x" || cell == "O" || cell == "o"}
  end 
  
  def taken? (position)
    p = position.to_i - 1
    self.cells[p] == "X" || self.cells[p] == "O"
  end 
  
  def valid_move?(move)
    m = move.to_i
    if (1..9).any? {|num| num == m }
      self.taken?(move) == false 
    end
  end 
  
  def update(position, player)
    p = position.to_i - 1
    binding.pry
    self.cells[p] = 
  end 
  
  
  
  
end 