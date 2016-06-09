require 'sinatra/base'
require 'shotgun'
require 'capybara'
require './lib/player'



class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1]).name
    $player2 = Player.new(params[:player2]).name
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end


