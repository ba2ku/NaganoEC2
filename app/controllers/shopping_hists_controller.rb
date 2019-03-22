class ShoppingHistsController < ApplicationController
  def index
  	@ordered_items = OrderedItem.all.includes(:Item,:ShoppingHistory)
  end

  def create
  end

  def show
  end
end
