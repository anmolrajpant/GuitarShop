class RequestController < ApplicationController
  def index
  end

  def show
    @request = Request.find(params[:id])
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to request_path(@request)
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
  def request_params
    params.require(:request).permit(:orderNo, :purchaseDate, :companyName, :quantity, :cost, :deliveryDate)
  end
end
