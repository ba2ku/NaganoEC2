class ShoppingHistsController < ApplicationController
  def index
    @shopping_histories = ShoppingHistory.all
    @shopping_histories = @shopping_histories.page(params[:page]).per(10)
  end

  def create
    @shopping_history = ShoppingHistory.new(shopping_history_params)
    @carts = Cart.where(user_id: current_user.id)
    if @shopping_history.save
      @carts.each do |c|
          c.item.update(stock: c.item.stock - c.amount )
          c.destroy
      end
       redirect_to cart_cmp_path
    else
      redirect_to root_path
    end
  end

  def show
    @shopping_hist = ShoppingHistory.find(params[:id])
  end

  private
  def shopping_history_params
    params.require(:shopping_history).permit(:user_id, :shopping_date, :status,
    address_history_attributes:[:id,:shopping_history_id,:postcode,:prefecture,:city,:street,:building],
    ordered_items_attributes:[:id,:item_id, :shopping_history_id, :quantity, :price])
  end
  def item_params
    params.require(:item).permit(:id,:stock)
  end
end
