class Api::V1::UsersController < ApplicationController

    before_action :set_user, only: [:show,:update]

    #おそらく必要がない
    # def index
    #     @users = User.all
    #     render json: { users: @users }
    # end

    def show
        render json: { status: 200 , user: @user , rankings: @user.rankings}
    end

    def update
        @user.name = user_params[:name]

        if @user.save
            render json: { status: 200, user: @user }
        else
            render json: { status: 500, message: "更新に失敗しました" }
        end
    end

    private 

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.permit(
            :name,
            :email,
        )
    end

end
