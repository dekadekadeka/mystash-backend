class NeedlesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @needles = Needle.all
        render json: @needles, except: [:user_id]
    end

    def show
        @needle = Needle.find(params[:id])
        render json: @needle
    end

    def create
        @needle = Needle.new(needle_params)
        if(@needle.save)
            render json: @needle
        else
            render json: { error: 'failed to add needle' }, status: :unprocessible_entity
        end
    end

    def update
        @needle = Needle.find(params[:id])
        if @needle.update(needle_params)
            render json: @needle, status: :accepted
        else
            render json: {error: 'failed to update needle'}, status: :not_acceptable
        end
    end

    def destroy
        @needle = Needle.find(params[:id])
        @pic.destroy
    end

    private

    def needle_params
        params.require(:needle).permit(:needle_type, :size, :user_id)
    end
end
