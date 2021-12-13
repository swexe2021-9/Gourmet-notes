class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end
    
    def new
      @article = Article.new
      @store = Store.find(params[:store_id])
    end
    
    def create
      @article = Article.new(title: params[:article][:title], user_id: params[:article][:user_id], store_id: params[:article][:store_id],
                             intro: params[:article][:intro], kodawari: params[:article][:kodawari], mood: params[:article][:mood],
                             review: params[:article][:review])
      if @article.save
          flash[:notice] = '投稿しました。'
          redirect_to :root
      else
          render new_article_path
      end  
    end
    
    def destroy
      article = Article.find(params[:id])
      article.destroy
      redirect_to root_path  
    end
    
    def show
      @article = Article.find(params[:id])
    end
    
    def menu
      render 'menu'
    end
end
