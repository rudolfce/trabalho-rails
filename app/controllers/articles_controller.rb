class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def by_author
    @author = Author.find(params[:author])
    @articles = Article.order("articles.id ASC").where(:author_id => params[:author])
  end

  def by_tags
    @tag = Tag.find(params[:tag])
    @articles = Article.joins(:tags).order("articles.id ASC").where('tags.id' => params[:tag])
  end

  def show
    @article = Article.find(params[:id])
    @author = @article.author
    @tags = @article.tags
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article successfully created"
      redirect_to @article
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :author_id, :tag_list)
    end
end
