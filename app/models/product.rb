# frozen_string_literal: true

class Product < ApplicationRecord
  enum :status, { draft: 0, published: 1, trash: 2}
end
