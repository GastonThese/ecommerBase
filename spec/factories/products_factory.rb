FactoryBot.define do
  factory :product do
    trait :published do
      price { 1.5 }
      name { "MyString" }
      code { "MyString" }
      description { "MyString" }
      publish { true }
    end

    trait :unpublished do
      price { 1.5 }
      name { "MyString" }
      code { "MyString" }
      description { "MyString" }
      publish { false }
    end

    trait :invalid do
      price { nil }
      name { nil }
      code { nil }
      description { nil }
      publish { true}
    end
  end
end
