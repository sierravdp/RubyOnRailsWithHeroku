class ArticlesController < ApplicationController
	def new
		@article = Article.new
	end

	def create
		@article = Article.new(params[:article])
 
		@article.save
		redirect_to @article
	end
 
	def show
		@article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
	  	@article = Article.find(params[:id])
	 	@article.update(article_params)
	    redirect_to @article
	end

	def destroy
	  	@article = Article.find(params[:id])
	  	@article.destroy
	 
	 	redirect_to articles_path
	end

end
