class CustomersController < ApplicationController
respond_to :html, :json

  def show
    @customer = Customer.find(params[:id])
    respond_with(@customer)
  end

  def index
    @customers = Customer.all
    respond_with(@customers)
  end

  def new
    @customer = Customer.new
    respond_with(@customer)
  end

  def create
    @customer = Customer.new(params[:customer])
    @customer.save      
    respond_with @customer
  end

  def edit
    @customer = Customer.find(params[:id])
    respond_with(@customer)
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update_attributes(params[:customer])
    respond_with(@customer)
  end


  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    respond_with @customer, :location => customers_path
  end

end
