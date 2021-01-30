class Api::V1::ItemsController < ApplicationController

    before_action :set_user

    def index
        @items = @user.items
        render json: @items
    end

    def create
        @item = @user.items.new(item_params)
            if @item.save
                render json: @user
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

    def set_user
        @user = User.find(params[:user_id])
      end

    def item_params
        params.require(:item).permit(:name, :description, :claimed_by, :picture, :price, :user_id)
    end

end