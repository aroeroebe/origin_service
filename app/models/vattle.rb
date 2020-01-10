class Vattle < ApplicationRecord
  belongs_to :user
  belongs_to :post
  
  mount_uploader :imaged, ImagedUploader       #画像を投稿するため
 # self.inheritance_column = :_type_disabled  #typeカラムがそのままだと使えないため
 
 
 validates :title, length: { maximum: 30 }
end





  