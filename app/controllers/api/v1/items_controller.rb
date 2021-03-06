class Api::V1::ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token 

  def index
    @items = Item.all
    render json: @items.map {|item| {name: item.name, description: item.description, image_url: item.image_url}}
  end

  def show
    render json: Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.json {head :no_content}
    end
  end

  def create
    @item = Item.new(item_params)
    if @item.save!
      render json: @item
    else
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :image_url)
  end
end