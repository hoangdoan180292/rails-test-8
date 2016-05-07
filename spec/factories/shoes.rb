FactoryGirl.define do
  factory :shoe do
    sequence(:name)   { |n| "Nike #{n}" }
    sequence(:sku)    { |n| "nike#{n}" }
    price             123
    brand
  end
end