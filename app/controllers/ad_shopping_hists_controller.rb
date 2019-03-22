class AdShoppingHistsController < ApplicationController
  def index
  	@ad_shopping_hists = ShoppingHistory.all.includes(:ordered_items,:user)
  end

  def show
  	@ad_shopping_hist = ShoppingHistory.find(params[:id])
  end

  def update
  	@ad_shopping_hist =ShoppingHistory.find(params[:id])
  	if @ad_shopping_hist.update(ad_shopping_hist_params)
  		flash[:notice] = "配送状況を変更しました"
  		redirect_to ad_shopping_hists_path
  	else
      flash[:notice] = "配送状況の変更に失敗しました"
  		redirect_to root_path
  	end
  end

private

   def ad_shopping_hist_params
    params.require(:shopping_history).permit(:status)
   end

end
