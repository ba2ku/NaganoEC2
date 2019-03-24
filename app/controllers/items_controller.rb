class ItemsController < ApplicationController
  def index
    @q = Item.search(search_params)
    @items = @q.result.includes(:artist,:label,:genre,:property,:musics)
    header_name_display
  end

  def show
    @item = Item.find(params[:id])
    header_name_display
  end

private

def search_params
    params.require(:q).permit(:name_cont)
end

end
