class ApplicationController < ActionController
    def show
        @article = Article.find(params[:id])
    end
end
