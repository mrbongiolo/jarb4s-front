class ItemsController < ApplicationController
  def index
    #filters
    @qualities =  Item.pluck(:quality).uniq.compact.sort
    @rarities =   Item.pluck(:rarity).uniq.compact.sort
    @item_types = Item.pluck(:item_type).uniq.compact.sort
    @heroes =     Item.pluck(:hero).uniq.compact.sort

    @items = Item.all
    @items = @items.where(quality: params[:quality]) if params[:quality]
    @items = @items.where(rarity: params[:rarity]) if params[:rarity]
    @items = @items.where(item_type: params[:item_type]) if params[:item_type]
    @items = @items.where(hero: params[:hero]) if params[:hero]
    @items = @items.order('starting_price_cents ASC').page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
  end
end
