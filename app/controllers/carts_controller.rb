class CartsController < ApplicationController
# カート画面を表示する
  def index
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end
#カートテーブルに1レコード記録する(カートに入れる)
  def create
  end
# 決算確認画面表示
  def show
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end
#カートテーブルの特定のレコードを更新する
  def destroy
  end
#カートテーブルの個数を更新する
  def update
  end
#決算完了画面
  def cart_cmp
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end
end
