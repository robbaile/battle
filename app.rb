require 'sinatra/base'
require_relative './lib/game.rb'

class Battle < Sinatra::Base
    @game = nil
    get '/' do 
        erb :home
    end
    run! if app_file == $0
end 