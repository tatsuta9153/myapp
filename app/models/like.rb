class Like < ApplicationRecord

    belongs_to :user
    belongs_to :tweet
    validates :user_id, presence: true
    validates :tweet_id, presence: true

    def iine(id)
        return Like.exists?(user_id: current_user.id, tweet_id: id)
      end

      def iine
        return true
      end
end
