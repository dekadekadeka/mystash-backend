class FlossesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @flosses = Floss.all
        render json: @flosses, except: [:user_id]
    end

    def show
        @floss = Floss.find(params[:id])
        render json: @floss
    end

    def create
        @floss = Floss.new(floss_params)
        if(@floss.save)
            render json: @floss
        else
            render json: { error: 'failed to add floss' }, status: :unprocessible_entity
        end
    end

    def update
        @floss = Floss.find(params[:id])
        if @floss.update(floss_params)
            render json: @floss, status: :accepted
        else
            render json: {error: 'failed to update floss'}, status: :not_acceptable
        end
    end

    def destroy
        @floss = floss.find(params[:id])
        @pic.destroy
    end

    private

    def floss_params
        params.require(:floss).permit(:brand, :color, :amount, :user_id)
    end
end
