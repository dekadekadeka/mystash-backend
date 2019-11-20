class YarnsController < ApplicationController
    # skip_before_action :authorized, only: [:index, :show]

    def index
        @yarns = Yarn.all
        render json: @yarns, except: [:user_id]
    end

    def show
        @yarn = Yarn.find(params[:id])
        render json: @yarn
    end

    def create
        @yarn = Yarn.new(yarn_params)
        if(@yarn.save)
            render json: @yarn
        else
            render json: { error: 'failed to add yarn' }, status: :unprocessible_entity
        end
    end

    def update
        @yarn = Yarn.find(params[:id])
        if @yarn.update(yarn_params)
            render json: @yarn, status: :accepted
        else
            render json: {error: 'failed to update yarn'}, status: :not_acceptable
        end
    end

    def destroy
        @yarn = Yarn.find(params[:id])
        @pic.destroy
    end

    private

    def yarn_params
        params.require(:yarn).permit(:brand, :name, :color, :size, :lot, :pic, :user_id)
    end

end
