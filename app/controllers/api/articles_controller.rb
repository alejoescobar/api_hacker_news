module Api
  class ArticlesController < ApplicationController
    def index
      articles = Article.all
      render json: articles
    end
    def create
      article = Article.new(article_params)
      if article.save
        render json: article, status: 201, location: article
      end
    end

    private

    def article_params
      params.require(:article).permit(:title, :body, :user_id)
    end

  end
end



# curl -i -X POST -H 'Content-Type: application/json' -d '{"title": "marieuta title 1", "body": "mariqueta 1", "user_id":1}' http://localhost:3000/api/articles

# curl -i -X POST -H 'Content-Type: application/json' -d 'article[title]= myTitle ' http://localhost:3000/api/articles

# curl -i http://localhost:3000/api/users
