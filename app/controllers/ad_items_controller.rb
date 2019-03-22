class AdItemsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_user_admin
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
    redirect_to ad_items_path
    else
    redirect_to root_path
    end
  end

  def show
    @user = User.find(current_user.id)
  end

  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:jacket_id,:artist_id,:genre_id,:label_id,:property_id,:price,:details,:stock,:release_day,:display_flag)
  end
end
