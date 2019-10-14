class Api::V1::ApiController < ApplicationController 
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  before_action :check_auth
  # jsonapi-serializers
  def serialize_model(model, options = {})
    options[:is_collection] = false
    JSONAPI::Serializer.serialize(model, options)
  end

  def serialize_models(models, options = {})
    options[:is_collection] = true
    JSONAPI::Serializer.serialize(models, options)
  end

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
