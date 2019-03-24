class ShoppingHistsController < ApplicationController
  def index
  	@shopping_histories = ShoppingHistory.all
  end

  def create
  end

  def show
    @shopping_hist = ShoppingHistory.find(params[:id])
  end
  private
  def ordered_item_params
  	params.require(:shoppinghistory).permit(:user_id, :addres_history_id, :shopping_date, :status)
  end
end
