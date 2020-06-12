FactoryBot.define do 
  factory(:park) do 
    name {Faker::Movies::Hobbit.location}
    description {Faker::Hipster::sentence(word_count: 10)}
    state {Faker::Address.state}
    established {Faker::Number.number(digits: 4)}
  end
end