class OrdersController < ApplicationController
respond_to :html, :json

  def show
    @order = Order.find(params[:id])
    respond_with(@order)
  end
  
  def index
    @orders = Order.all
    respond_with(@orders)
  end
  
  def new
    @order = Order.new
    @customers = Customer.all
    respond_with(@order)
  end

  def create
    @order = Order.new(params[:order])   
    @order.save   
    respond_with @order
  end

  def edit
    @order = Order.find(params[:id])
    respond_with(@order)
  end

  def update
    @order = Task.find(params[:id])
    @order.update_attributes(params[:order])
    respond_with @order
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    respond_with @order, :location => customers_path
  end

end
