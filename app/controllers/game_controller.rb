class GameController < ApplicationController
  def index
    @people = Person.all
    @game = Game.all

    @gameid1 = "58f55ccc1b52630e8badaecb"
    @gameid2 = "5906a3891b526302f22c7fd5"

  end

  def new
    @game = Game.new
  end

  def create

    @game = Game.new(game_params)
    @game.inviter = current_user.email
    @game.edPicked = 0
    @game.erPicked = 0

    if @game.save
      UserMailer.invite_email(@game).deliver_now
      redirect_to( draft_team_new_path(:gameid => @game.id) )
    end
  end

  private
  def game_params
    params.require(:game).permit(:gameType, :invited, :inviter)
  end
end
