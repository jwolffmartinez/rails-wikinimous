class ArticlesController < ApplicationController

  before_action :set_article, only: [:show, :update, :edit, :destroy]

  def index         # GET /restaurants
    @articles = Article.all
  end

  def show          # GET /restaurants/:id
  end

  def new           # GET /restaurants/new
    @article = Article.new()

  end

  def create        # POST /restaurants
    @article = Article.new(articles_params)
    @article.save
    redirect_to articles_path

  end

  def edit          # GET /restaurants/:id/edit
  end

   def update  # PATCH /restaurants/:id
    @article.update(articles_params)
    redirect_to articles_path(@article)
  end

  def destroy       # DELETE /restaurants/:id
    @article.destroy
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to articles_path
  end


  private

  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :content)
  end
end
