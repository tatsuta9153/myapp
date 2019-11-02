class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, tweet_id: params[:id])
    @like.save
    @tweet = Tweet.find_by(id: @like.tweet_id)
    @like_count = Like.where(tweet_id: params[:id]).count
    @iine = iine?(current_user.id,params[:id])
  end
  
  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: params[:id])
    @like.save
    @tweet = Tweet.find_by(id: @like.tweet_id)
    @like.destroy
    @like_count = Like.where(tweet_id: params[:id]).count
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
