class Api::SessionsController < ApplicationController
    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
        if @user
            login(@user)
            render json: @user
        else
            render json: ['Invalid username/password combination'], status: 422
        end
    end

    def destroy
        @user = current_user
        if @user
            logout
            render json: ['you are now logged out']
        else
            render json: ['Nobody signed in'], status: 404
        end
    end
end
