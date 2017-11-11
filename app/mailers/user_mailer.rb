class UserMailer < ActionMailer::Base
  default :from => "mbcanderson@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Pls confirm your email for the boy")
  end
end