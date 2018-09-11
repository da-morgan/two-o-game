class Player
    attr_accessor :name, :lives
    def initialize
        @lives = 3
        @name = ""
    end

    def remove_life
        @lives = @lives-1
    end

    def lives
        @lives
    end
end