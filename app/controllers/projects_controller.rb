class ProjectsController < ApplicationController
    def index
        @projects = Project.all
        # @projects = Project.all.includes(:investments)
        # render json: @projects, include: :investments
        render json: @projects, :include => {:investments => {include: :user}}
    end

    def show
        @project = Project.find(params[:id])
        render json: @project, :include => {:investments => {include: :user}}
    end

    def new
        @project = Project.new
        render json: @project
    end

    def create
        @project = Player.create(project_params)
        render json: @project
    end

    def update
        @project = Project.find(params[:id])
        @project.update(project_params)
        render json: @project
    end

    private

    def project_params
        params.require(:project).permit(:developer_name, :location, :total_capital_needed, :minimum_investment, :projected_roi, :lat, :lng, :size, :img1, :img2, :img3)
    end
end
