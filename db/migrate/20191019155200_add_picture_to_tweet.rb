class AddPictureToTweet < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :picture, :string
  end
end
