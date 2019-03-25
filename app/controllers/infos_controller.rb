class InfosController < ApplicationController
  def new
    @user = User.find(current_user.id)
    @infomation = Infomation.new
  end

  def index
    @items = Item.all
  	@infomations = Infomation.all
  end

  def edit
    @infomation = Infomation.find(params[:id])
  end

  def create
  	infomation = Infomation.new(info_params)
  	infomation.save
  	redirect_to infos_path
  end

  def update
    infomation = Infomation.find(params[:id])
    infomation.update(info_params)
    redirect_to infos_path
  end

  def destroy
  end

  private
  def info_params
  	params.require(:infomation).permit(:infomation)
  end
end
