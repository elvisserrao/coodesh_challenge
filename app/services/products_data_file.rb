# frozen_string_literal: true

require 'rest-client'

class ProductsDataFile
  attr_reader :file_path

  def initialize(filename)
    @base_url = "https://challenges.coode.sh/food/data/json/#{filename}"
    @file_path = @response.file.path
  end

  def get
    @response = RestClient::Request.execute(
      method: :get,
      url: @base_url,
      raw_response: true
    )

    self
  end
end
