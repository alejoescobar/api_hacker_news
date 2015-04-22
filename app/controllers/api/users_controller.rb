module Api
  class UsersController < ApplicationController
    before_action :authenticate

    def index
      users = User.all
      render json: users, status: 200

    end

    protected
    def authenticate
      authenticate_or_request_with_http_token do | token, options|
        User.find_by(token: token)
      end
    end
  end
end
