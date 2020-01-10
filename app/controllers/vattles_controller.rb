class VattlesController < ApplicationController

  def new
    @post = Post.find(params[:id])
    @vattle = current_user.vattles.build
  end

  def create
    @post = Post.find(params[:post_id])
    @vattle = current_user.vattles.build(vattle_params)
    @vattle.post_id = @post.id
    
    if @vattle.save
      flash[:success] = 'バトルに参加しました'
      redirect_to root_url
    else
      flash.now[:danger] = 'バトル参加に失敗しました。'
      render 'toppages/index'
    end
  end  
end

def vattle_params
    params.require(:vattle).permit(:imaged, :title)
end

