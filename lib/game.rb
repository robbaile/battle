require_relative 'player'

class Game
    attr_reader :player1, :player2
    def initialize(player1_name, player2_name)
        @player1 = Player.new(player1_name)
        @player2 = Player.new(player2_name)
        @player1.is_playing = true
    end

    def switch_turns
        if @player1.is_playing
            @player1.is_playing = false 
            @player2.is_playing = true 
        else 
            @player2.is_playing = false
            @player1.is_playing = true
        end
    end

    def attack
        result = nil
        player1.is_playing ? player1.attack(player2) : player2.attack(player1)
        result = check_result
        if result == nil
            switch_turns    
        else
            return result  
        end

    end

    def check_result
        if player1.hit_points <= 0
            "#{player2.name} has won the game"
        elsif player2.hit_points <= 0
            "#{player1.name} has won the game"
        end
    end
end