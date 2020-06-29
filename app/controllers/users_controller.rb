class UsersController < ApplicationController
    
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    # not sure if we need an index page to show all the users
    def index
        @users = User.all
    end

    # profile page
    def show
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        # needs validations
    end

    def edit
    end

    def update
        @user.update(user_params)
        # needs validations
    end

    # once you delete your account, redirects you to create a new one
        # or should it redirect you to the home page of the main app?
    def destroy
        @user.delete
        redirect_to root_path
    end

    private

    def user_params
        params.require(:user).permit(:username, :name)
    end

    def find_user
        @user = User.find(params[:id])
    end

    # maybe have the validation as a spearte method to call instead of putting inside each action

end