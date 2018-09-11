require "./question"
require "./player"

class Game
    def initialize
        @player1 = Player.new
        @player1.name = "Player 1"
        @player2 = Player.new
        @player2.name = "Player 2"
        @current_turn_player = @player1
        @is_over = false
        puts "Welcome to ToughMath. The fun game with tough math."
    end

    def start
        while @is_over == false do
            question = Question.new

            puts "#{@current_turn_player.name}: #{question.question}"
            userAnswer = gets.chomp().to_i
            if userAnswer == question.game_answer
                puts "Correct!"
                puts print_lives
                change_current_turn_player
                game_over_checker
            else
                puts "Incorrect"
                @current_turn_player.remove_life
                puts print_lives
                change_current_turn_player
                game_over_checker
            end
        end
        puts "Game Over! #{@current_turn_player.name} wins!"

    end

    def print_lives
        "#{@player1.name}: #{@player1.lives}/3 | #{@player2.name}: #{@player2.lives}/3"
    end

    def change_current_turn_player
        if @current_turn_player == @player1
            @current_turn_player = @player2
        else
            @current_turn_player = @player1
        end
    end

    def game_over_checker
        if @player1.lives == 0 || @player2.lives == 0
            @is_over = true
        else 
            @is_over = false
        end
    end

end