class AdItemsController < ApplicationController

  def index
    @items = Item.all.includes(:artist,:property)
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

  def edit
    @item = Item.find(params[:id])
    @artists = Artist.all
    @genres = Genre.all
    @labels = Label.all
    @properties = Property.all
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to edit_ad_item_path(@item.id)
    else
      redirect_to root_path
    end
  end


  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:jacket_id,:artist_id,:genre_id,:label_id,:property_id,:price,:details,:stock,:release_day,:display_flag,musics_attributes: [:id, :item_id,:cd_number,:music_name,:music_order,:test_url,:_destroy])
  end

end
