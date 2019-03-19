class InfosController < ApplicationController
  def new
    @infomation = Infomation.new
  end

  def index
  	@infomation = Infomation.all
  end

  def edit
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
