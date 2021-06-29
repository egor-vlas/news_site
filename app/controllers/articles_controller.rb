class ArticlesController < ApplicationController
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

	private
	def require_params
		params.require(:article).permit(:title, :body)
	end
end