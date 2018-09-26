require 'matrix'
require_relative 'cell'

class Matrix 
    def []=(i, j, x)
      @rows[i][j] = x
    end
end

class Board 

    attr_accessor :grid, :size

    def initialize (size: 10)
        @grid = Matrix.build(size){Cell.new}
        @size = size
        return true
    end

    def display 
        @grid.each_with_index do | cell, row, col| 
            if cell.actual_state == 0
                print " "
            else
                print "#{cell.actual_state}"
            end
            if col+1 == @size
                puts''
            end    
        end
        return true
    end

end




