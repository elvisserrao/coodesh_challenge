# frozen_string_literal: true

require 'zlib'

class ProductsParser
  attr_reader :file, :parsed_data

  def initialize
    @parsed_data = []
    @invalid_data = []
  end

  def parse(file_path)
    @file = Zlib::GzipReader.new(File.open(file_path))
    start_reading
  end

  private

  def start_reading
    file.lineno = 0
    file.each_line do |line|
      assign_product(line)
      break if file.lineno == 100
    end
    file.close
  end

  def assign_product(data)
    item = sanatize_code(JSON.parse(data, symbolize_names: true).slice(*Product.attribute_names.map(&:to_sym)))

    new_product = Product.where(code: item[:code]).first_or_initialize
    new_product.assign_attributes(item)

    if new_product.save
      @parsed_data << new_product
    else
      @invalid_data << new_product
    end
  end

  def sanatize_code(item)
    item[:code] = item[:code].tr('\"', '')
    item
  end
end
