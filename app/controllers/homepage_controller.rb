class HomepageController < ApplicationController
  def home
    @users = User.all
    @people = Person.all
    @game = Game.all
  end
end
