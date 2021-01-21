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

    def update
        @item = Item.find(params[:id])
        if @item.update(item_params)
            render json: @item
        else
            render json: {error: 'Item could not be updated.'}
        end
    end

    private

    def item_params
        params.require(:item).permit(:name, :description, :claimed_by, :picture, :price, :user_id)
    end

end

