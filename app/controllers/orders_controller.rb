class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:new, :create]
  respond_to :html, :json, :js

  def index
    @orders = Order.all
  end 

  def show
    @order = @order
  end 

  def new 
    @order = Order.new
  end 

  def edit
  end 

  def create
    @order = Order.new(order_params)
    @order.save
    ClientMailer.artist_request_email(@order).deliver_later
    redirect_to(root_path)
    flash[:notice] = 'Your request was successfully sent!'
  end 

  def update
    @order.update(order_params)
    flash[:notice] = 'Order was successfully updated.'
    respond_with(@order)
  end 

  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end 

  private
    def set_order
      @order = Order.find(params[:id])
    end 

    def order_params
      params.require(:order).permit(:name, :email, :phone, :location, :special) 
    end 

    
end
 
