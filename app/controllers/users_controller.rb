class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      # UserMailer.registration_confirmation(@user).deliver
      flash[:notice] = "You got lucky. I haven't implemented email confirmation yet. Enjoy FULL ACCESS BBY"
      redirect_to root_url
    else
      flash[:alert] = 'Well, shit. Either you or the boy messed up and something went wrong :('
      redirect_to request.referrer
    end
  end

  def confirm_email
    user = User.find_by_confirm_token(params[:id])
    if user && user.update_column(:email_confirmed, true)
      flash[:notice] = "YOU did it! You're on the list now and can leave get well messages"
      redirect_to root_url
    else
      flash[:alert] = "Sorry :( You didn't find what you were looking for"
      redirect_to root_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end