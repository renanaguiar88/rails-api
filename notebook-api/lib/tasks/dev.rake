namespace :dev do
  desc "Development enviroment configuration"
  task setup: :environment do
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 35.years.ago, to: 18.years.ago)
      )   
    end
  end

end
