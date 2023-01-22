set :chronic_options, hours24: true

every 1.day, at: '12:00' do
  runner "Product.import"
end
