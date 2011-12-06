class ArticlesController < Spree::BaseController
  respond_to :html
  def index
    @featured_articles = Article.all
    @search = Article.search(params[:search])
    @articles = @search.all
    respond_with(@articles)
  end


  def show
    @featured_articles = Article.all
    @article = Article.find(params[:id])
    @related_articles = Article.all
    @author = User.find(@article.user_id)
  end
end
