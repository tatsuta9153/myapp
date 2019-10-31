class Tweet < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :likes, dependent: :destroy
    belongs_to :user

    def iine(user)
        likes.create(user_id: user.id)
    end

    def uniine(user)
        likes.find_by(user_id: user.id).destroy
    end

    def iine?(user)
        iine_users.include?(user)
      end
    
end
