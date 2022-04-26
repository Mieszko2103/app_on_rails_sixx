class ArticlesController < ActionController::Base
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def create
    render plain: params[:article]
  end

  def new
    
  end
end