class GetWellMessagesController < ApplicationController
  def index
    @messages = GetWellMessage.all
  end

  def create
    password = params[:get_well_message][:user][:password]
    email = params[:get_well_message][:user][:email].downcase
    message = params[:get_well_message][:message]
    user = User.find_by_email(email)
    if user.authenticate(password)
      GetWellMessage.create(user: user, message: message)
    else
      flash[:alert] = "Nice try. But that ain't a valid p-word"
    end
    redirect_to request.referrer
  end
end