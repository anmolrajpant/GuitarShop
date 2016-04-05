class ItemController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_index_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to item_index_path
    end
  end

  private
  def item_params
    params.require(:item).permit(:itemCode, :make, :model, :color, :selingPrice, :condition, :orderNo, :rackNo, :image)
  end
end
