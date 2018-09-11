class Question
    attr_reader :question, :game_answer

    def initialize
        @val1 = rand(1..20)
        @val2 = rand(1..20)
        @question = "What is #{@val1} + #{@val2}"
        @game_answer = @val1+@val2
    end

end