class SeclikesController < ApplicationController
  def create
    vattle = Vattle.find(params[:vattle_id])
    current_user.seclike(vattle)
    flash[:success] = 'お気に入り登録をしました。'
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    vattle = Vattle.find(params[:vattle_id])
    current_user.secunlike(vattle)
    flash[:success] = 'お気に入り登録を解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
