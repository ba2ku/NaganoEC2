class ShoppingHistsController < ApplicationController
  def index
  	@ordered_items = OrderedItem.all.includes(:Item,:ShoppingHistory)
  end

  def create
    @user = User.find(current_user.id)
  end

  def show
    @shopping_hist = ShoppingHistory.find(params[:id])
  end

  private
  def ordered_item_params
  	params.require(:shoppinghistory).permit(:user_id, :addres_history_id, :shopping_date, :status)
  end
end
