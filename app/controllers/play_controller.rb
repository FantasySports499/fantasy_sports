class PlayController < ApplicationController
  def index
    @edGames = EdGame.all
    @erGames = ErGame.all

    @players = Player.all
    @gameid1 = "58f55ccc1b52630e8badaecb"

  end

  def result
    @edGames = EdGame.all
    @erGames = ErGame.all

    @players = Player.all

  end
end
