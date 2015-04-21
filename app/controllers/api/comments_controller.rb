module Api
  class CommentsController < ApplicationController
    def index
      user = User.find(params[:user_id])
      user_comments = user.comments
      render json: user_comments
    end

    def create

      modified_params = comment_params
      modified_params[:user_id] = params[:user_id]

      comment = Comment.new(modified_params)

      if comment.save
        render json: comment, status: 201
      else
        render json: comment.errors, status: 422
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:body, :article_id, :user_id)
    end

  end
end

# curl -i -X POST -H 'Content-Type: application/json' -d '{"body": "some random Comment", "article_id": "5"}' http://localhost:3000/api/users/4/comments
