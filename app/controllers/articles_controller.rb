class ArticlesController < ApplicationController
   before_action :authenticate_user! 

  def index
    @articles = current_user.articles
  end

  def new
    @ariticle = Article.new 
  end

  def create
    @article = current_user.articles.new(article_params)
    @article.save!
    redirect_to articles_path
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
