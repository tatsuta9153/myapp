class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, tweet_id: params[:id])
    @like.save
    @tweet = Tweet.find_by(id: @like.tweet_id)
    @like_count = Like.where(tweet_id: params[:id]).count
  end
  
  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:id])
    @like.save
    @tweet = Tweet.find_by(id: @like.tweet_id)
    @like.destroy
    @like_count = Like.where(tweet_id: params[:id]).count
  end



end
