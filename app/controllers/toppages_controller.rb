class ToppagesController < ApplicationController
  def index
    @posts = Post.all.order(id: :desc).page(params[:page]).per(4)
    @vattles = Vattle.all.order(id: :desc).page(params[:page]).per(4)
    @time = Time.current
  end
  
  
  

  def about
  end
  

  
end
