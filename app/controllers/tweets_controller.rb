class TweetsController < ApplicationController
    def index
      @tweets = Tweet.all
    end

    def show
      @tweet = Tweet.find_by(:id => params[:id])
      @like_count = Like.where(tweet_id: params[:id]).count
      @iine = iine?(current_user.id,params[:id])
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

  def iine?(user_id,tweet_id)
    str = Like.where(user_id: current_user.id ,tweet_id: params[:id])
    if str.length == 0  then
      return false
    else
      return true
    end
  end





end
