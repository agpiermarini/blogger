class ArticlesController < ApplicationController
  def index
    render locals: {
              articles:  Article.all
              }
  end

  def show
    render locals: {
              article:  Article.find(params[:id])
              }
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
