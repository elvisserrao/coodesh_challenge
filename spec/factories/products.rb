FactoryBot.define do
  factory :product do
    code { Faker::Number.number(digits: 6) }
    status { Product.statuses.values.sample }
    imported_t { Time.zone.now }
    url { Faker::Internet.url }
    creator { Faker::Name.name }
    created_t { Time.zone.now }
    last_modified_t { Time.zone.now }
    product_name { Faker::Commerce.product_name }
    quantity { Faker::Food.measurement }
    brands { Faker::Commerce.brand }
    categories { Faker::IndustrySegments.industry }
    labels { Faker::IndustrySegments.industry }
    cities { Faker::Address.city }
    purchase_places { Faker::Commerce.vendor }
    stores { Faker::Commerce.vendor }
    ingredients_text { Faker::Food.ingredient }
    traces { Faker::Food.ethnic_category }
    serving_size { Faker::Measurement.metric_weight }
    serving_quantity { Faker::Number.decimal(l_digits: 2) }
    nutriscore_score { Faker::Number.between(from: 1, to: 100) }
    nutriscore_grade { %w[a b c d e f].sample }
    main_category { Faker::Food.ethnic_category }
    image_url { Faker::Internet.url }

    trait :draft do
      status { :draft }
    end

    trait :published do
      status { :published }
    end

    trait :trash do
      status { :trash }
    end
  end

end
