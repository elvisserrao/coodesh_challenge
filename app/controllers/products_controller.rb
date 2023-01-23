# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, only: %i[show update destroy]

  # GET /products
  def index
    pagy, @products = pagy(Product.all)
    pagy_headers_merge(pagy)
    render json: @products
  end

  # GET /products/:code
  def show
    render json: @product
  end

  # PATCH/PUT /products/:code
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/:code
  def destroy
    @product.trash!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find_by(code: params[:code])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:code, :status, :imported_t, :url, :creator, :created_t, :last_modified_t,
                                    :product_name, :quantity, :brands, :categories, :labels, :cities,
                                    :purchase_places, :stores, :ingredients_text, :traces, :serving_size,
                                    :serving_quantity, :nutriscore_score, :nutriscore_grade, :main_category, :image_url)
  end
end
