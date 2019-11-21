class PatternsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @patterns = Pattern.all
        render json: @patterns
    end

    def show
        @pattern = Pattern.find(params[:id])
        render json: @pattern
    end

    def create
        @pattern = Pattern.new(pattern_params)
        if(@pattern.save)
            render json: @pattern
        else
            render json: { error: 'failed to add pattern' }, status: :unprocessible_entity
        end
    end

    def update
        @pattern = Pattern.find(params[:id])
        if @pattern.update(pattern_params)
            render json: @pattern, status: :accepted
        else
            render json: {error: 'failed to update pattern'}, status: :not_acceptable
        end
    end

    def destroy
        @pattern = Pattern.find(params[:id])
        @pic.destroy
    end

    private

    def pattern_params
        params.require(:pattern).permit(:brand, :number, :front_pic, :back_pic)
    end

end
