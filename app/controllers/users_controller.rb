class UsersController < ApplicationController
    def index
        @users = User.all.includes(:investments)
        render json: @users, include: :investments
    end

    def show
        @user = User.find(params[:id])
        render json: @user, include: :investments
    end

    def new
        @user = User.new
        render json: @user
    end

    def create
        @user = User.create(user_params)
        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
