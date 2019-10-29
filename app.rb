require 'sinatra/base'
# require './lib/player.rb'
# require './lib/game.rb'

class Battle < Sinatra::Base
    get '/' do 
        "Hello world"
    end
    run! if app_file == $0
end 