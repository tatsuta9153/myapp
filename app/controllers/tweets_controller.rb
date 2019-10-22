class TweetsController < ApplicationController
    def index
      @tweets = Tweet.all
    end

    def show
      @tweet = Tweet.find_by(:id => params[:id])

    end

    def new
      @tweet = Tweet.new
      cuurent_name?(current_user)

    end

    def create
      @tweet = Tweet.new
      @tweet.name = params[:tweet][:name]
      @tweet.title = params[:tweet][:title]
      @tweet.content = params[:tweet][:content]
      @tweet.picture = params[:tweet][:picture]
      @tweet.save
      redirect_to "/tweets/index"
    end

    def edit
      @tweet = Tweet.find_by(:id => params[:id])
      cuurent_name?(current_user)

    end

    def update
      tweet = Tweet.find_by(:id => params[:id])
      tweet.update(tweet_params)
      redirect_to "/tweets/index"
    end

    def destroy
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.destroy
    redirect_to "/tweets/index"
    end

  def tweet_params
    params.require(:tweet).permit(:name,:id,:title,:content,:picture)
  end

  def cuurent_name?(user)
    if user then
      @name = user.name
    else
      @name = "ゲスト"
    end
  end


end
