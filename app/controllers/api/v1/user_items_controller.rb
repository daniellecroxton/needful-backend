class Api::V1::UserItemsController < ApplicationController

    def index
        @user = User.find(params[:user_id])
        @items = @user.items
        render json: @items
    end

end