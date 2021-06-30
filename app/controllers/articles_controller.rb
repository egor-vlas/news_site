class ArticlesController < ApplicationController

	def index
		@articles = Article.all
	end

	def new
		@article = Article.new		
	end

	def create
		@article = Article.new(require_params)
		if @article.save
			flash[:notice] = "Article was created successfully"
			redirect_to @article
		else
			render 'new'
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])		
	end

	def update
		@article = Article.find(params[:id])
		@article.update(require_params)
		redirect_to @article
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		flash[:notice] = "Article was destroyed successfully"
		redirect_to articles_path
	end

	private
	def require_params
		params.require(:article).permit(:title, :body)
	end
end