class AdUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_user_admin
  def top
    @user = User.find(current_user.id)
  end

  def index
    @users = User.all
    @user = User.find(current_user.id)
    @shopping_hists = ShoppingHistory.all
    @users = @users.page(params[:page]).per(20)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
        flash[:notice] = "ユーザー情報が更新されました。"
        redirect_to ad_users_path
    else
      flash[:notice] = "ユーザー情報が正しく更新されませんでした。"
      redirect_to root_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "削除が正常に完了しました。"
      redirect_to ad_users_path
    else
      flash[:notice] = "削除に失敗しました。"
      redirect_to ad_users_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:kanji_last,:kanji_first,:katakana_last,:katakana_first,:phone_number,:email,:notice,address_attributes: [:postcode,:prefecture,:city,:street,:building])
  end
end
