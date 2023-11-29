puts "Cleaning Database 🧼"
User.destroy_all

# Create Users
User.create!(
  username: 'Rebecca',
  email: 'rebecca@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/rebeccabri"
)

User.create!(
  username: 'Alberto',
  email: 'alberto@example.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/agalara"
)

User.create!(
  username: 'Killian',
  email: 'killian@example.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/kildcn"
)

User.create!(
  username: 'Maksym',
  email: 'maksym@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/habidulin"
)

User.create!(
  username: 'Emma',
  email: 'emma@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/emmvs"
)

User.create!(
  username: 'Adam',
  email: 'adam@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk"
)

puts "Created #{User.count} Users 🤷🏽 🙋🏻‍♀️ 💃🏼 👨🏼‍🌾"

puts "Seeds successfully created! 🌱"
