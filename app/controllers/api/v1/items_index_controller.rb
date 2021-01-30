class Api::V1::ItemsIndexController < ApplicationController

    def index
        @items = Item.all
        render json: @items
    end

end

