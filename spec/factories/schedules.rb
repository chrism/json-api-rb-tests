FactoryBot.define do
  factory :schedule do
    name { Faker::Lorem.sentence }
    current_position 1
  end
end
