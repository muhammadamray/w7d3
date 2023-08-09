class UsersController < ApplicationController

    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new
        if @user.save
            login!(@user)
            redirect_to user_url(@user)
        else
            
        end
    end
end
