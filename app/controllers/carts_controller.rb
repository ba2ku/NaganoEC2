class CartsController < ApplicationController
  def index
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end

  def create
  end

  def show
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end

  def destroy
  end

  def update
  end

  def cart_cmp
    if user_signed_in?
      @user = User.find(current_user.id)
    else

    end
  end
end
