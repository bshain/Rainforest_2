class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
      if Item.save
        redirect_to items_url
      else
        render :new
      end
  end
end
