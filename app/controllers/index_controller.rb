class IndexController < ApplicationController
  helper_method :ranku_seiri


  def hello
    @array = []
    @tweet = Tweet.all
    @rankings = Tweet.find(Like.group(:tweet_id).order('count(tweet_id) desc').limit(3).pluck(:tweet_id))

    @rankings.each do |t|
      @array.push(Like.where(tweet_id: t.id).count)
    end
  end

 def ranku_seiri(one,two)

    if one == two
      false
    else
      true
    end
  end


end