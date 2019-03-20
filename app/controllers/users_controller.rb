class UsersController < ApplicationController
  def top
  end

  def mypage
    @user = User.find(current_user.id)
  end

  def show
  end

  def update
  end

  def edit
  end

  def resign
  end

  def resign_cmp
  end
end
