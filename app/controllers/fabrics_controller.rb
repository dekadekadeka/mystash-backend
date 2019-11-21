class FabricsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @fabrics = Fabric.all
        render json: @fabrics
    end

    def show
        @fabric = Fabric.find(params[:id])
        render json: @fabric
    end

    def create
        @fabric = Fabric.new(fabric_params)
        if(@fabric.save)
            render json: @fabric
        else
            render json: { error: 'failed to add fabric' }, status: :unprocessible_entity
        end
    end

    def update
        @fabric = Fabric.find(params[:id])
        if @fabric.update(fabric_params)
            render json: @fabric, status: :accepted
        else
            render json: {error: 'failed to update fabric'}, status: :not_acceptable
        end
    end

    def destroy
        @fabric = Fabric.find(params[:id])
        @pic.destroy
    end

    private

    def fabric_params
        params.require(:fabric).permit(:fabric_type, :color, :size, :description, :name, :pic)
    end

end
