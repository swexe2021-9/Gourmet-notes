class UserController < ApplicationController
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(email: params[:user][:email], pass: params[:user][:pass], belong: params[:user][:belong])
        if @user.save
            redirect_to '/top/login_form'
        else
            render 'new'
        end
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        user = User.find(params[:id])
        user.update(email: params[:user][:email], pass: params[:user][:pass], belong: params[:user][:belong])
        redirect_to '/users'
    end
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to '/users'
    end
end
