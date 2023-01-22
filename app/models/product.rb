# frozen_string_literal: true

class Product < ApplicationRecord
  before_validation :set_default_value

  enum :status, { draft: 0, published: 1, trash: 2 }

  validates :imported_t, :status, presence: true
  private

  def set_default_value
    return if persisted?

    self.imported_t = Time.zone.now
    self.status = :draft
  end
end
