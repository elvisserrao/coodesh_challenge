require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:product) { create(:product)}

  it "is not valid without a status" do
    product.status = nil
    expect(product).to_not be_valid
  end

  it "is not valid without a imported_t" do
    product.imported_t = nil
    expect(product).to_not be_valid
  end

  it "to be valid" do
    expect(product).to be_valid
  end

end
