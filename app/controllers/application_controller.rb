# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Pagy::Backend

  before_action :authenticate_request!

  def authenticate_request!
    return if request.headers['api-key'] == ENV['API_KEY']

    render json: 'Please check your api key', status: :unauthorized
  end
end
