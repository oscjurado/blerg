class PostsController < ApplicationController
	def create
		@post = Post.new(post_params)

		@post.save

		redirect_to @post
	end
	
	def show
		@post = Post.find(params[:id])
	end

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def new
	end

	private 

	def post_params
		params.require(:post).permit(:title, :body)
	end

end
