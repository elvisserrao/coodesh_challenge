require 'rails_helper'

RSpec.describe "/products", type: :request do

  describe "GET /index" do
    before do
      FactoryBot.create_list(:product, 25)
    end

    it "renders a successful response" do
      get products_url, as: :json
      expect(response).to be_successful
      body = JSON.parse(response.body)
      expect(body.count).to eq(25)
      expect(response.body).to include('imported_t')
      expect(response.body).to include('status')

    end
  end

  describe "GET /products/:id" do
    let (:product) { create(:product) }

    it "renders a successful response" do
      get product_url(product), as: :json
      expect(response).to be_successful
    end
  end

  describe "PUT /products/:id" do
    let (:product) { create(:product) }

    context "when product is updated" do

      it "renders a JSON response with product's attributes" do
        patch product_url(product),
      params: { product: { last_modified_t: Time.zone.now } }, as: :json

        expect(response).to be_successful
        expect(response.content_type).to match(a_string_including("application/json"))
        expect(response.body).to include('imported_t')
      end

      it "Product.last_modified_t gets updated" do
        patch product_url(product),
      params: { product: { last_modified_t: Time.zone.now } }, as: :json
        expect(product.last_modified_t).not_to eq(product.reload.last_modified_t)
      end
    end
  end

  describe "DELETE /products/:id" do
    let (:product) { create(:product, :published) }

    it "Set requested product status to trash" do
      delete product_url(product), as: :json

      expect(product.reload.status).to eq('trash')
    end

  end
end
