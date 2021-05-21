require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end
    
    post '/piglatinize' do
        user_word = params["user_phrase"]
        word = PigLatinizer.new
        @piglatinized_word = word.piglatinize(user_word)
        erb :pig_latin
    end





end