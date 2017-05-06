class DraftTeamController < ApplicationController
  def new
    @players = Player.all
  end
end
