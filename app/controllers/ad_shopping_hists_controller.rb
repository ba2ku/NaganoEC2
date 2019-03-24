class AdShoppingHistsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_user_admin

  def index
    @user = User.find(current_user.id)
  end

  def show
    @user = User.find(current_user.id)
  end

  def update
  end
end
