class ArticlesController < Spree::BaseController
  respond_to :html
  def index
    @search = Article.search(params[:search])
    @articles = @search.all
    respond_with(@articles)
  end


  def show
    @article = Article.find_by_slug(params[:id])
    @related_articles = Article.all
    @comment = Comment.new()
    @comments = @article.comments
    @author = User.find(@article.user_id)
  end
end
