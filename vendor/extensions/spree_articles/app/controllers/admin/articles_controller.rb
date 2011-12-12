class Admin::ArticlesController < Admin::BaseController
  # uses_yui_editor
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
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
    redirect_to article_path(@article)
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


  def image_upload
    @article = Article.find(params[:image][:viewable_id])
    @article.images.create(params[:image])
    if @article.save
      redirect_to edit_admin_article_path(@article), :notice => "New article image uploaded successfully"
    else
      render "new"
    end
  end

  def image_destroy
    @image = Image.find(params[:id])

    if @image.destroy
      redirect_to :back, :notice => "Image destroyed."
    else
      render "new"
    end
  end

end

