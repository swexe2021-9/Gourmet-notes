class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end
    
    def new
      @article = Article.new  
    end
    
    def create
      @article = Article.new(title: params[:article][:title], user_id: params[:article][:user_id], store_id: params[:article][:store_id],
                             intro: params[:article][:intro], kodawari: params[:article][:kodawari], mood: params[:article][:mood],
                             kuchikomi: params[:article][:kuchikomi])
      if @article.save
          flash[:notice] = '投稿しました。'
          redirect_to :root
      else
          render new_article_path
      end  
    end
    
    def edit
      @article = Article.find(params[:user_id])   
    end
    
    def update
      @article = Article.find(params[:user_id])
      @article.update(title: params[:article][:title], user_id: params[:article][:user_id], store_id: params[:article][:store_id],
                      intro: params[:article][:intro], kodawari: params[:article][:kodawari], mood: params[:article][:mood],
                      kuchikomi: params[:article][:kuchikomi])
      redirect_to root_path  
    end
    
    def destroy
      article = Article.find(params[:user_id])
      article.destroy
      redirect_to root_path  
    end
end
