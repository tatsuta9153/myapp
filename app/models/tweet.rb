class Tweet < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :likes, dependent: :destroy
    belongs_to :user


    
end
