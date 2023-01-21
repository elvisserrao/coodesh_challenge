# frozen_string_literal: true

class Product < ApplicationRecord
  enum :status, { draft: 0, published: 1, trash: 2}

  validates_presence_of :imported_t, :status
end
