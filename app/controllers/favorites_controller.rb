class FavoritesController < ApplicationController
  def create
   micropost = Micropost.find(params[:like_id])
   current_user.like(micropost)
   flash[:success] = 'Likeしました！'
   redirect_to current_user
    
  end

  def destroy
    micropost = Micropost.find(params[:like_id])
    current_user.unlike(micropost)
    flash[:success] = 'Likeを解除しました。'
    redirect_to current_user
  end
end
