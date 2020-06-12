# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed 

  def self.begin
    Park.destroy_all
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        name: Faker::Movies::Hobbit.location,
        description: Faker::Hipster::sentence(word_count: 10),
        state: Faker::Address.state,
        national: [true, false].sample,
        established: Faker::Number.number(digits: 4)
      )
      puts "Park #{i}: Name is #{park.name} and the park state is '#{park.state}'. Is this a national park? #{park.national}. Park #{i}: Established #{park.established} and the park description '#{park.description}'."
    end
   end  
  end

  Seed.begin