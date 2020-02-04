class PostsbyController < ApplicationController
    def index
        @users = User.all.order("created_at DESC")
    end
    def show
        @user = User.find(params[:id])
        @posts = @user.posts.all.order("created_at DESC")
        @comments = @user.comments.all.order("created_at DESC")
    end
end
