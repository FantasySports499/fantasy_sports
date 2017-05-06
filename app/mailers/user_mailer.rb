class UserMailer < ApplicationMailer
  default from: 'fantasysports499@gmail.com'

  def invite_email(user)
    @game = user
    @url  = 'http://localhost:3000/users/sign_in'
    mail(to: @game.invited, subject: 'Welcome to Fantasy Sports!')
  end
end
