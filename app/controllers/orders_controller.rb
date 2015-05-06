class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  
  def show
    @order = Order.find(params[:id])
  end
  
  def edit
    @order = Order.find(params[:id])
  end
  
  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to @order, notice: "Order successfully updated!"
    else
      render :edit
    end
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to @order, notice: "Order successfully created!"
    else
      render :new
    end
  end
  
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_url, alert: "Order successfully deleted!"
  end
  
  private
  
  def order_params
    params.require(:order).permit!
  end
end
