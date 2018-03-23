class ArticlesController < ApplicationController
  def index
    render locals: {
              articles:  Article.all
              }
  end

  def show
    require "pry"; binding.pry
    render locals: {
              article:  Article.find(params[:id])
              }
  end
end
