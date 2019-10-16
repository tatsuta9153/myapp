class IndexController < ApplicationController
  def hello
      @user = User.find_by(:username => params[:username])

  end
  def bye
    render :text => "bye"
  end
end
