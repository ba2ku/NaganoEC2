class CartsController < ApplicationController
# カート画面を表示する
  def index
    @carts = Cart.all.includes(:item,:user)
  end
#カートテーブルに1レコード記録する(カートに入れる)
  def create
    @cart = Cart.new(cart_params)
    @cart.save
    redirect_to carts_path
  end
# 決算確認画面表示
  def cart_cfm
    @carts = Cart.all.includes(:item,:user)
    @shopping_hist = ShoppingHistory.new
      @shopping_hist.build_address_history
      @shopping_hist.ordered_items.build
    @items = Item.all
  end
#カートテーブルの特定のレコードを更新する
  def destroy
    @cart = Cart.find(params[:id])
    if @cart.destroy
      flash[:notice] = "削除しました。"
      redirect_to carts_path
    else
      flash[:notice] = "更新に失敗しました。"
      redirect_to carts_path
    end
  end
#カートテーブルの個数を更新する
  def update
    @cart = Cart.find(params[:id])
    if  params[:cart][:amount].to_i <= @cart.item.stock
      @cart.update(cart_params)
      flash[:notice] = "更新しました。"
      redirect_to carts_path
    else
      flash[:notice] = "購入希望数の在庫が確保できなかったため更新に失敗しました。"
      redirect_to carts_path
    end
  end
#決算完了画面
  def cart_cmp
  end

  private
  def cart_params
    params.require(:cart).permit(:user_id,:item_id,:amount)
  end
end
