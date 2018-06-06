require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    platinizer = PigLatinizer.new(params[:pig_latin]) #creating new instance of platinaizer because we wanrt to test it.
    platinizer.platinize
  end


end
