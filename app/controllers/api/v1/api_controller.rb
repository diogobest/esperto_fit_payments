class Api::V1::ApiController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  before_action :check_auth

  private

  def render_not_found
    render json: 'Não encontrado', status: :not_found
  end

  def check_auth
    authenticate_or_request_with_http_basic do |username,password|
      resource = User.find_by_email(username)
      if resource.valid_password?(password)
        sign_in :user, resource
      end
    end
  end
end
