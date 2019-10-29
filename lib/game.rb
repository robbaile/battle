require 'player'

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
        player1.is_playing ? player1.attack(player2) : player2.attack(player1)
        switch_turns
    end


end