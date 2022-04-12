class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def new
    
    end

    def create
       @article = Article.new(params[:article])                        
<<<<<<< HEAD
=======

>>>>>>> a90bfd673988c1b16d725172c357b689d2321237
    end
    
end

