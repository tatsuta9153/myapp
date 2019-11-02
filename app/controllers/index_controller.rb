class IndexController < ApplicationController
  def hello
      @tweet = Tweet.all
      @rankings = Tweet.find(Like.group(:tweet_id).order('count(tweet_id) desc').limit(3).pluck(:tweet_id))
  end

end