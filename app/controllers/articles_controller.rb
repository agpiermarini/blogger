class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :destroy, :edit, :update]
  def index
    render locals: {
              articles:  Article.all
              }
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    flash.notice = "Article '#{@article.title}' Created!"

    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy

    flash.notice = "Article '#{@article.title}' Deleted!"

    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update(article_params)

<<<<<<< HEAD
    flash.notice = "Article '#{@article.title}' was Updated!"
=======
    flash.notice = "Article '#{@article.title}' was updated!"
>>>>>>> f814f0492f6d4d7764277195a46865f4545e7758

    redirect_to article_path(@article)
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
