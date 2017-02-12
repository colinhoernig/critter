User.create!(name: "Colin Hoernig",
             email: "fake@email.com",
             password: "Temp1234*",
             password_confirmation: "Temp1234*",
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
