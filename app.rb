require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    @user_input = params["user_phrase"]
    @pig_latin = PigLatinizer.new
    # binding.pry
    erb :piglatinize
  end
end
