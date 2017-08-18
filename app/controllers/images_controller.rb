 
 
class ImagesController < ApplicationController
  before_action :set_order
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json, :js

  def index
    @images = Image.all
  end 

  def show
  end 

  def new 
    @image = Image.new
  end 

  def edit
  end 

  def create
    @image = Image.new(image_params)
    @image.order_id = @order.id
    @image.save
    redirect_to order_path(@order)
  end 

  def update
    @image.update(image_params)
    flash[:notice] = 'Image was successfully updated.'
    redirect_to order_path(@order)
  end 

  def destroy
    @image.destroy
    redirect_to images_url, notice: 'Image was successfully destroyed.'
  end 

  private
    def set_image
      @image = Image.find(params[:id])
    end 

    def set_order
      @order = Order.find(params[:order_id])
    end 


    def image_params
      params.require(:image).permit(:title, :description, :pic) 
    end 
end
 
