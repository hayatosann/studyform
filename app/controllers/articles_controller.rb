class ArticlesController < ApplicationController

  def new
    @ariticle = Article.new 
  end
end
