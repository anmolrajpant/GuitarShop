class ItemsController < ApplicationController
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
    @item = Item.new(items_params)
    if @item.save
      redirect_to items_path
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
      redirect_to items_path
    end
  end

  private
  def items_params
     params.require(:item).permit(:uniqueID, :make, :model, :quantity, :color, :sellingPrice, :condition, :rackNo, :image)
  end
end
