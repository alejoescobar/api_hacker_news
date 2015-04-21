module Api
  class CommentsController < ApplicationController
    def index
      user = User.find(params[:user_id])
      user_comments = user.comments
      render json: user_comments
    end
  end
end