class Post < ApplicationRecord
  belongs_to :user
  has_one :vattle
  
  #お気に入り機能追加用中間テーブル追加
  has_many :likes, foreign_key: 'post_id', dependent: :destroy
  has_many :liked, through: :likes, source: :user
  
  
  validates :title, length: { maximum: 30 }
  
   
  mount_uploader :image, ImageUploader       #画像を投稿するため
 # self.inheritance_column = :_type_disabled  #typeカラムがそのままだと使えないため
  
  
  def counts(liked_post)
    @count_liked = liked_post.liked.count
  end
  
  
 
   
end
