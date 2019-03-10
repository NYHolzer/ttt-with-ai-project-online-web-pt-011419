require 'pry'

class Board 
  
  attr_accessor :cells
  
  def initialize 
    self.reset!
  end 
  
  def cells=(cells)
    @cells = []  
  end 
  
  def reset!
    @cells = [" ", " ", " ", " ", " ", " ", " ", " "," "]
  end 
  
  binding.pry
  def display
    print "cells[0] | cells[1] | cells[2]"
  end 
end 