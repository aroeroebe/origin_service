module LikesHelper
  def count(post)
    post.liked.count
  end
end
