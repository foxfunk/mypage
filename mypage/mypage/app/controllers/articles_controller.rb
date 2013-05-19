class ArticlesController < ApplicationController
	def new
		@articles = Article.new

	end

	def create
		@article = Article.new(params[:article])

		if @article.save
			redirect_to @article, notice: 'se ha creado el articulo'
	end
end
