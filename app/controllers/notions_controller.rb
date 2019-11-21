class NotionsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @notions = Notion.all
        render json: @notions, except: [:user_id]
    end

    def show
        @notion = Notion.find(params[:id])
        render json: @notion
    end

    def create
        @notion = Notion.new(notion_params)
        if(@notion.save)
            render json: @notion
        else
            render json: { error: 'failed to add notion' }, status: :unprocessible_entity
        end
    end

    def update
        @notion = Notion.find(params[:id])
        if @notion.update(notion_params)
            render json: @notion, status: :accepted
        else
            render json: {error: 'failed to update notion'}, status: :not_acceptable
        end
    end

    def destroy
        @notion = Notion.find(params[:id])
        @pic.destroy
    end

    private

    def notion_params
        params.require(:notion).permit(:name, :brand, :size, :color, :description, :user_id)
    end

end
