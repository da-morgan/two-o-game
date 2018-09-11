class Player
    def initialize
        @lives = 3
    end

    def remove_life
        @lives = @lives-1
    end

    def lives
        @lives
    end
end