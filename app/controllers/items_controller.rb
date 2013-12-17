class ItemsController < ApplicationController
  def index
    #@items = Item.order('starting_price_cents ASC').page(params[:page])
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
end
