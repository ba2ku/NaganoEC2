class CartsController < ApplicationController
  def index
    @user = User.find(current_user.id)
  end

  def create
    @user = User.find(current_user.id)
  end

  def show
    @user = User.find(current_user.id)
  end

  def destroy
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
  end

  def cart_cmp
    @user = User.find(current_user.id)
  end
end
