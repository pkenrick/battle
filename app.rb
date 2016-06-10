require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
  	player = Player.new(params[:player_1_name])
  	player2 = Player.new(params[:player_2_name])
    $game = Game.new(player, player2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
  	@game = $game
    @current_turn = @game.current_turn
    @opposing_player = @game.opposing_player
    @game.attack(@game.opposing_player)
    @game.switch_turns
    erb :attack

  end

  run! if app_file == $0
  set :session_secret, 'super secret'

end
