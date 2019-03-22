class InfosController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @infomation = Infomation.new
  end

  def index
    @user = User.find(current_user.id)
  	@infomation = Infomation.all
  end

  def edit
    @user = User.find(current_user.id)
  end

  def create
  	infomation = Infomation.new(infomation_params)
  	infomation.save
  	redirect_to infomation_path
  end

  def update
  end

  def destroy
  end

  private
  def info_params
  	params.require(:infomation).permit(:body)
  end
end
