class InfosController < ApplicationController
  def index
  	@infomation = Infomation.new
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
