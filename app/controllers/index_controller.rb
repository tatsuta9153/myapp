class IndexController < ApplicationController
  def hello
      @user = User.find_by(:username => params[:username])
      @tweet = Tweet.all
  end

end
