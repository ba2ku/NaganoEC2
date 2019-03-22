class UsersController < ApplicationController
  def top
  if user_signed_in?
    @user = User.find(current_user.id)
  else

  end
  end

  def mypage
    @address = Address.find(current_user.id)
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
    @shopping_histories = ShoppingHistory.all
    @shopping_history = ShoppingHistory.where(user: current_user.id)
  end

  def show
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end

  def update
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
    if @user.update(user_params)
        flash[:notice] = "ユーザー情報が更新されました。"
        redirect_to user_mypage_path(current_user)
    else
      flash[:notice] = "ユーザー情報が正しく更新されませんでした。"
      redirect_to user_mypage_path(current_user)
    end
  end

  def edit
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end

  def resign
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end

  def resign_cmp
  end

  private
  def user_params
    params.require(:user).permit(:kanji_last,:kanji_first,:katakana_last,:katakana_first,:phone_number,:email,:notice,address_attributes: [:postcode,:prefecture,:city,:street,:building])
  end
end
