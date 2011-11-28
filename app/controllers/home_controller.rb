class HomeController < Spree::BaseController
  def index
    @articles = Article.all
  end

end
