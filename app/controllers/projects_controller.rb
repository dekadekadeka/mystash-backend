class ProjectsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @projects = Project.all
        render json: @projects
    end

    def create
        @project = Project.new(project_params)
        if(@project.save)
            render json: @project
        else
            render json: { error: 'failed to add project' }, status: :unprocessible_entity
        end
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
    end

    private

    def project_params
        params.require(:project).require(:user_id, :pattern_id)
    end
end
