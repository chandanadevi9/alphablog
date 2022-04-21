class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def new
    
    end
    def edit
        @article = Article.find(params[:id])
      end
    
      def create
        @article = Article.new(params.require(:article).permit(:title, :description))
        if @article.save
    @@ -22,4 +26,14 @@ def create
        end

    def create
       @article = Article.new(params[:article])                        
        if @article.save
            flash[:notice] = " Article was created sucessfully."
            redirectt_to @article
        else
            render 'new'
        end
    end  
end

