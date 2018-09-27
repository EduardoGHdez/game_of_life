require_relative 'board'

class GameOfLife

    attr_accessor :board

    def initialize(size: 10)        
        @board = Board.new(size: size)   
        @board.grid.each_with_index do |cell, row, col|
            @board.grid[row, col].actual_state = 0
        end                            
    end

    def randomCell
        row = Random.rand(@board.size-1)
        col = Random.rand(@board.size-1)
        @board.grid[row, col].actual_state = 1    
        return row, col
    end

    def tick
        died = 0
        alive = 0
        @board.grid.each_with_index do |cell, row, col|
            neighbors = 0
            (-1..1).step(1).each do |y|
                if(!(row+y<0 || row+y>=@board.size))
                    (-1..1).step(1).each do |x|
                        if(!(col+x<0 || col+x>=@board.size))
                            if(!(x==0 && y==0))                                
                                if(@board.grid[row+y,col+x].actual_state == 1)
                                    neighbors += 1;
                                end
                            end
                        end
                    end
                end
            end
            #Check rules.
            #Under population and over population             
            if(neighbors<2 || neighbors>3)
                died +=1
                @board.grid[row, col].next_state=0;
            end
            #Alive or reproduction
            if(neighbors == 3)
                alive += 1
                @board.grid[row, col].next_state = 1;
            end
        end
        #Update board
        @board.grid.each_with_index do |cell, row, col|
            @board.grid[row, col].actual_state = @board.grid[row, col].next_state
        end      
        return [died, alive]    
    end

    def selectCell(row: nil, col: nil)
        if(!row || !col)
            return false
        end
        @board.grid[row, col].actual_state = (@board.grid[row, col].actual_state==0) ? 1:0
    end

    def display
        @board.display
        puts '##########################################'
    end

    def example
        game = GameOfLife.new()
        game.selectCell(row:3, col:6)
        game.selectCell(row:3, col:8)
        game.selectCell(row:4, col:6)
        game.selectCell(row:4, col:7)
        game.selectCell(row:4, col:8)
        game.selectCell(row:4, col:9)
        game.selectCell(row:5, col:5)
        game.selectCell(row:5, col:6)
        game.selectCell(row:5, col:7)
        game.selectCell(row:6, col:7)
        game.selectCell(row:6, col:8)
        game.selectCell(row:6, col:9)
        (1..50).step(1).each{ |x| game.randomCell}
        game.display
        puts "Press enter to continue ticking, 's' to select another cell or 'n' to end"
        option = ($stdin.gets.chomp)
        while option != 'n'
            if option == 's'
                puts "row, col ?"
                a, b = gets.split.map(&:to_i)
                game.selectCell(row: a, col: b)
            end
            game.display
            game.tick
            puts "Press enter to continue ticking, 's' to select another cell or 'n' to end"
            option = ($stdin.gets.chomp)
        end
    end
end

#GameOfLife.new.example
