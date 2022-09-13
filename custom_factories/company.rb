FactoryBot.define do
  factory :company do
    name { Faker::Name.name }
    slug { Faker::Internet.slug }
    active { [true, false].sample }
    # sector
  #   sector { nil }
  end
end
