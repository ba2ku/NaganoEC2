class OrderedItemsController < ApplicationController
  def create
  	@ordered_item = OrderedItem.new(ordered_item_params)
  end

  private
  def ordered_item_params
  	params.require(:ordered_item).permit(:item_id, :shopping_history_id, :quantity, :price)
  end
end
