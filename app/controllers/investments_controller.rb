class InvestmentsController < ApplicationController
    def index
        @investments = Investment.all
        render json: @investments, include: :user
    end

    def show
        @investment = Investment.find(params[:id])
        render json: @investment, include: :user
    end

    def new
        @investment = Investment.new
        render json: @investment
    end

    def create
        @investment = Investment.create(investment_params)
        render json: @investment, include: :user
    end

    def update
        @investment = Investment.find(params[:id])
        @investment.update(investment_params)
        render json: @investment, include: :user
    end

    def destroy 
        @investment = Investment.find(params[:id])
        @investment.destroy
        
    end

    private

    def investment_params
        params.require(:investment).permit(:date, :amount, :user_id, :project_id)
    end
end
