require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do
        erb :user_input
    end

    post "/piglatinize" do
        pig = PigLatinizer.new
        @analized = pig.piglatinize(params[:user_phrase])
        erb :piglatinize    
    end
end