class HomeController < ApplicationController
  def index
  	@order = Order.new
  	@artist = Artist.new
  end 
  
end
