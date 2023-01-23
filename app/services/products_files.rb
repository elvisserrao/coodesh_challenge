# frozen_string_literal: true

require 'rest-client'

class ProductsFiles
  def initialize
    @base_url = 'https://challenges.coode.sh/food/data/json/index.txt'
  end

  def get
    response = RestClient.get @base_url
    response.split("\n")
  end
end
