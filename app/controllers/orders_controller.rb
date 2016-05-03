class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
    @order = Order.find(params[:id])
    if @order.destroy
      redirect_to orders_path
    end
  end

  private
  def order_params
    params.require(:order).permit(:purchaseDate, :pruchaseCompany, :quantity, :price, :deliveryDate)
  end
end
