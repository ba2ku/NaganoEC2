class ShoppingHistsController < ApplicationController
  def index
  	@ordered_items = OrderedItem.all.includes(:Item,:ShoppingHistory)
  end

  def create
    @user = User.find(current_user.id)
  end

  def show
    @user = User.find(current_user.id)
  end
end
