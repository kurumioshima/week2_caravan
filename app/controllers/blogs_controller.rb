class BlogsController < ApplicationController

	def index
		@blogs = Blog.all
	end

	def new
		@blog = Blog.new
		#@blog は変数。＠をつけることでviewに渡せる。
	end

	def create
		blog = Blog.new(blog_params)
		blog.save
		redirect_to blog_path(blog.id)
	end

	def show
		@blog = Blog.find(params[:id])
	end

private
# ストロングパラメータとは、不正なデータが送信されるのを防ぐ機能
	def blog_params
		params.require(:blog).permit(:title, :body, :category)
	end

end
