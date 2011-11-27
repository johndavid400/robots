class Admin::ArticlesController < Admin::BaseController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @taxons = Taxon.all
  end

  def create
    @article = Article.new(params[:article])
    @article.user_id = current_user.id
    if @article.save
      redirect_to admin_articles_path, :notice => "New article created"
    else
      render "new"
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      flash[:notice] = "Updated successfully"
    else
      flash[:error] = "Update failed"
    end
    redirect_to admin_articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Article Successfully deleted."
    redirect_to admin_articles_url
  end
end
