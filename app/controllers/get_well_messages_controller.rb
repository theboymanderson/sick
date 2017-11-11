class GetWellMessagesController < ApplicationController
  def index
    @messages = GetWellMessage.all
  end
end