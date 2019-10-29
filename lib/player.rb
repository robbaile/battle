class Player
    HIT_POINTS = 100
    attr_reader :name, :hit_points
    attr_accessor :is_playing 
    def initialize(name)
        @name = name
        @hit_points = HIT_POINTS
    end

    def attack(player)
        player.damage 
        true
    end

    def damage
        @hit_points -= 10
        "You have been hit"
    end



end