module LikesHelper
  def post_count(post)
    post.liked.count
  end
  
  def vattle_count(vattle)
    vattle.secliked.count
  end
  
end
