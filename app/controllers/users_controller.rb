class UsersController < ApplicationController
  def top
    @user = User.find(current_user.id)
  end

  def mypage
    @user = User.find(current_user.id)
    @shopping_histories = ShoppingHistory.all
    @shopping_history = ShoppingHistory.where(user: current_user.id)
  end

  def show
    @user = User.find(current_user.id)
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
        flash[:notice] = "ユーザー情報が更新されました。"
        redirect_to user_mypage_path(current_user)
    else
      flash[:notice] = "ユーザー情報が正しく更新されませんでした。"
      redirect_to user_mypage_path(current_user)
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  def resign
    @user = User.find(current_user.id)
  end

  def resign_cmp
  end

  private
  def user_params
    params.require(:user).permit(:kanji_last,:kanji_first,:katakana_last,:katakana_first,:phone_number,:email,:notice,address_attributes: [:postcode,:prefecture,:city,:street,:building])
  end
end
