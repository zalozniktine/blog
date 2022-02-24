class Api::V1::PostsController < ActionController::API
    def index
      @posts = Post.posted
    
      render json: @posts.to_json, status: :ok
    end
end