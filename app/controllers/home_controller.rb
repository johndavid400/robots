class HomeController < Spree::BaseController
  def index
    @featured_articles = Article.all.select{|p| p.featured == true}.take(4)
  end

end
