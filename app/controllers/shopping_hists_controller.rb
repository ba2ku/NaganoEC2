class ShoppingHistsController < ApplicationController
  def index
<<<<<<< HEAD
  	@ordered_items = OrderedItem.all.includes(:Item,:ShoppingHistory)
=======
  	@shopping_histories = ShoppingHistory.all
>>>>>>> release-m
  end

  def create
    @user = User.find(current_user.id)
  end

  def show
<<<<<<< HEAD
    @user = User.find(current_user.id)
=======
    @shopping_hist = ShoppingHistory.find(params[:id])
  end
  private
  def ordered_item_params
  	params.require(:shoppinghistory).permit(:user_id, :addres_history_id, :shopping_date, :status)
>>>>>>> release-m
  end
end
