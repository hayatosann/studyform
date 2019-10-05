class ArticlesController < ApplicationController

  def new
    @ariticle = Article.new 
  end

  def create
    binding.pry
    @article = current_user.articles.new(article_params)
    @article.save!
  end

  private
  
  def article_params
    params.permit(:study_time, :study_field, :study_summary, :itnews_opinion, :consultation, :sns_links)
  end
end
