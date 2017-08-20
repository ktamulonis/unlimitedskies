class HomeController < ApplicationController
  def index
  	@orders = Order.all
  	@order = Order.new
  	@artist = Artist.new
  end 

  def gallery 
  	@orders = Order.all
  	@images = Image.all
    @artist = Artist.new
    @order = Order.new
  end
  
end
