#passes a question and an answer to the game

class Question

    def generate_number
        rand(1..20)
    end

    def generate_question_and_answer
        val1 = generate_number
        val2 = generate_number

        question = "What is #{val1} + #{val2}"
        game_answer = val1+val2
        return question, game_answer
    end

end

question1 = Question.new

puts question1.generate_question_and_answer
