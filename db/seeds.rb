User.create!(name: "Example User",
             email: "email@example.com",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name = Faker::Name.name
  email = "email-#{n+1}@example.org"
  password = "password"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
