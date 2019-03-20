class AdItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @artists = Artist.all
    @genres = Genre.all
    @labels = Label.all
    @properties = Property.all
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "新規商品の登録が正常に完了しました。"
      redirect_to ad_items_path
    else
      flash[:notice] = "新規商品の登録ができませんでした。"
      redirect_to new_ad_item_path
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:jacket_id,:artist_id,:genre_id,:label_id,:property_id,:price,:details,:stock,:release_day,:display_flag,
                                musics_attributes: [:id, :item_id,:cd_number,:music_name,:music_order,:test_url,:_destroy])
  end
end
