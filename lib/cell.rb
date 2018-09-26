class Cell
    attr_accessor :actual_state, :next_state
    def initialize (actual_state: nil, next_state: nil)
        @actual_state = actual_state
        @next_state = next_state
    end    
end