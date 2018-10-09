 class Maths
        attr_accessor :current_player, :game_is_on
        def initialize
            @player1 = Player.new("Player 1")
            @player2 = Player.new("Player 2")
            @current_player = "Player 1"
            @game_is_on = true
        end
     def start_game 
        puts "Sharpen Your Wits QuickMaths Has begun"
            ask_question
    end
    def players_turn 
        if @current_player == "Player 1"
            @current_player = "Player 2"
        else
            @current_player = "Player 1"
        end
    end

    def ask_question
        puts "---New Round---"
        number1 = rand(1..20)
        number2 = rand(1..20)
        answer = number1 + number2
        puts "#{@current_player} whats #{number1} + #{number2}"
        player_answer = gets.chomp.to_i

        if(player_answer == answer)
            puts "#{current_player} Killer!!!"
        else
            puts "#{current_player} back to school for you"
            if current_player == "Player 1"
                @player1.killed
            else
                @player2.killed
            end
        end
        puts "P1 #{@player1.lives}/3 lives left vs P2 #{@player2.lives}/3 lives left"
        check_winner
        end
    end
    def check_winner
        if @player1.lives == 0
            game_is_on == false
            puts "Player 2 is Winner"
        elsif @player2.lives == 0
            game_is_on == false
            puts "Player 1 is Winner"
        else
            players_turn
            ask_question
        end
    

end

