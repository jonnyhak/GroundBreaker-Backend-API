class UsersController < ApplicationController
    def index
        @users = User.all.includes(:investments)
        render json: @users, :include => {:investments => {include: :project}}
    end

    def show
        @user = User.find(params[:id])
        render json: @user, :include => {:investments => {include: :project}}
    end

    def new
        @user = User.new
        render json: @user
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: @user
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
        
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
