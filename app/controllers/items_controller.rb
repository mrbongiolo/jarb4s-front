class ItemsController < ApplicationController
  def index
    #filters
    @qualities =  Item.pluck(:quality).uniq.compact.sort
    @rarities =   Item.pluck(:rarity).uniq.compact.sort
    @item_types = Item.pluck(:item_type).uniq.compact.sort
    @heroes =     Item.pluck(:hero).uniq.compact.sort

    @items = Item.where(quality: params[:quality], rarity: params[:rarity], item_type: params[:item_type], hero: params[:hero]).order('starting_price_cents ASC').page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
  end
end
