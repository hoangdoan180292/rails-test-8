FactoryGirl.define do
  factory :brand do
    sequence(:title)  { |n| "Test #{n}" }
  end
end