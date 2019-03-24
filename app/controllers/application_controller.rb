class ApplicationController < ActionController::Base
  before_action :search

  def search
    @q = Item.ransack(params[:q])
    @items = @q.result.includes(:artist,:label,:genre,:property,:musics)
  end

  def search_params
     params.require(:q).permit(:name_cont)
  end

end
