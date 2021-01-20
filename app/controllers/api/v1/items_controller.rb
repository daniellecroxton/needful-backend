class Api::V1::ItemsController < ApplicationController

    def index
        @items = Item.all
        render json: @items
    end

    def create
        @item = Item.build(item_params)
            if @item.save
                render json: @item
            else
                render json: {error: 'Item could not be saved.'}
            end
    end

    def show
        @item = Item.find(params[:id])
        render json: @item
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :claimed_by, :picture, :price, :user_id)
    end

end

