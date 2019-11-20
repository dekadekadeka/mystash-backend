class UsersController < ApplicationController
    # skip_before_action :authorized, only: [:index, :show, :create]

    def index
        @users = User.all
        render json: @users, except: [:password_digest]
    end

    def stash
    end

    def show
        @user = User.find(params[:id])
        render json: @user, except: [:password_digest]
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
        #   @token  = encode_token(user_id: @user.id)
            render json: {user: UserSerializer.new(@user)}, status: :created
        else
            render json: {error: 'failed to create user'}, status: :not_acceptable
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user, status: :accepted
        else
            render json: {error: 'failed to update user'}, status: :not_acceptable
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :username, :password)
    end
end
