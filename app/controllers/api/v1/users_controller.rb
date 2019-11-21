class Api::V1::UsersController < ApplicationController
    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
