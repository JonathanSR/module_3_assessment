class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
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