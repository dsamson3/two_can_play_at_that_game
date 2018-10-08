class turn
    def initialize
        @number1 = rand(1..20)
        @number2 = rand(1..20)
        @answer = @number1 + @number2
    end

    def ask_question(current_player)
        puts "#{current_player.name} whats #{number1} + #{number2}"
        player_answer = gets.chomp.to_i

        if(player_answer == @answer)
            puts "#{current_player.name} Killer!!!"
        else
            puts "#{current_player} back to school for you"
            current_player.live -= 1
        end
    end
end