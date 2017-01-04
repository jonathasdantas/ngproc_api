require 'auth'

class ApplicationController < ActionController::API
  attr_reader :current_user

  before_action :authenticate!

  protected
    def authenticate!
      unless auth_token["user_id"]
        render json: { errors: ['Not Authenticated'] }, status: :unauthorized
      end

      return current_user = User.find(auth_token["user_id"])
    rescue
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    end

  private
    # Decodes to JWT token
    def auth_token
      Auth.decode(header_token)
    end

    # Get Token from HTTP Request
    def header_token
      request.headers['Authorization'].split(' ').last
    end
end
