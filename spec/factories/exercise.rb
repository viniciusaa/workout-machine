FactoryBot.define do
  factory :exercise do
    name { FFaker::Name.name }
    sets { FFaker::Random.rand(1..9) }
    duration { FFaker::Random.rand(1..60) }
    effort_level { FFaker::Random.rand(1..5) }
  end
end
