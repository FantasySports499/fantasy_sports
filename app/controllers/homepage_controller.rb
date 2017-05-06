class HomepageController < ApplicationController
  def home
    @users = User.all
    @people = Game.all
  end
end
