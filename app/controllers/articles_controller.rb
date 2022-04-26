class ArticlesController < ActionController::Base
  def show
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
    redirect_to @article       #article_path(@article)
  end
  def new
    
  end
end