class Api::V1::UsersController < ApplicationController


    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.build(user_params)
            if @user.save
                render json: @user
            else
                render json: {error: 'User could not be saved.'}
            end
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end

end
