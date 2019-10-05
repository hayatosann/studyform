class ArticlesController < ApplicationController

  def new
    @ariticle = Article.new 
  end

  def create
    @article = current_user.articles.new(article_params)
    @article.save!
  end

  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(article_id: params[:id])
  end

  private
  
  def article_params
    params.permit(:study_time, :study_field, :study_summary, :itnews_opinion, :consultation, :sns_links)
  end
end
