require 'rails_helper'

RSpec.describe "Api::V1::Home", type: :request do
  describe "GET /api/v1/home" do
    it "Get response with status :success" do

      get root_path, as: :json, headers: { 'api-key': ENV['API_KEY'] }

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:success)
      expect(response.body).not_to be_nil
    end
  end
end
