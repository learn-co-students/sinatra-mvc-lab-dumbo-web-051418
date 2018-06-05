require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    pig_convert = PigLatinizer.new
    @pc = pig_convert.piglatinize(params["user_phrase"])
    erb :pl_output
  end

end
