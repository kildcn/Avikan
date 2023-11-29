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

Bird.destroy_all

puts "Cleaning Database 🧼"

# Users

puts "Users created: #{User.count}"

puts "Birds unite!"

# Birds
Bird.create(
  common_name: "European Robin",
  scientific_name: "Erithacus rubecula",
  description: "A small insectivorous passerine bird known for its orange-red breast.",
  habitat: "Woodlands, gardens, parks.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 40,
  common_location: "Europe",
  bird_habitat_type: "Forest and Urban",
  bird_size: "Small",
  diet: "Insects, worms, seeds, fruits.",
  max_velocity: 30,
  rarity: "Common",
  sound_url: "https://example.com/sound/european_robin.mp3",
  weight: 18,
  photo: "https://example.com/photos/european_robin.jpg"
)

Bird.create(
  common_name: "Common Blackbird",
  scientific_name: "Turdus merula",
  description: "A species of true thrush with a distinctive orange beak and eye-ring.",
  habitat: "Forests, gardens, parks.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 35,
  common_location: "Europe",
  bird_habitat_type: "Woodland and Urban",
  bird_size: "Medium",
  diet: "Insects, worms, berries.",
  max_velocity: 40,
  rarity: "Common",
  sound_url: "https://example.com/sound/common_blackbird.mp3",
  weight: 100,
  photo: "https://example.com/photos/common_blackbird.jpg"
)

Bird.create(
  common_name: "Great Tit",
  scientific_name: "Parus major",
  description: "Easily recognizable by its yellow belly and black stripe, and green back.",
  habitat: "Woodlands, gardens.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 30,
  common_location: "Europe",
  bird_habitat_type: "Woodland and Urban",
  bird_size: "Small",
  diet: "Insects, seeds, nuts.",
  max_velocity: 35,
  rarity: "Common",
  sound_url: "https://example.com/sound/great_tit.mp3",
  weight: 20,
  photo: "https://example.com/photos/great_tit.jpg"
)

Bird.create(
  common_name: "Barn Swallow",
  scientific_name: "Hirundo rustica",
  description: "A migratory bird with a distinctive forked tail and blue-black upperparts.",
  habitat: "Open country, near water bodies.",
  conservation_status: "Least Concern",
  migrates: true,
  experience_points: 45,
  common_location: "Europe",
  bird_habitat_type: "Rural and Urban",
  bird_size: "Small",
  diet: "Flying insects.",
  max_velocity: 60,
  rarity: "Common",
  sound_url: "https://example.com/sound/barn_swallow.mp3",
  weight: 19,
  photo: "https://example.com/photos/barn_swallow.jpg"
)

Bird.create(
  common_name: "Eurasian Blue Tit",
  scientific_name: "Cyanistes caeruleus",
  description: "A small passerine bird with a blue cap and yellow underparts.",
  habitat: "Woodlands, gardens, parks.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 28,
  common_location: "Europe",
  bird_habitat_type: "Woodland and Urban",
  bird_size: "Small",
  diet: "Insects, caterpillars, seeds.",
  max_velocity: 32,
  rarity: "Common",
  sound_url: "https://example.com/sound/eurasian_blue_tit.mp3",
  weight: 11,
  photo: "https://example.com/photos/eurasian_blue_tit.jpg"
)

Bird.create(
  common_name: "Eurasian Nuthatch",
  scientific_name: "Sitta europaea",
  description: "A small woodland bird with a strong bill and gray upperparts.",
  habitat: "Deciduous and mixed woodlands.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 32,
  common_location: "Europe",
  bird_habitat_type: "Forest",
  bird_size: "Small",
  diet: "Insects, nuts, seeds.",
  max_velocity: 25,
  rarity: "Common",
  sound_url: "https://example.com/sound/eurasian_nuthatch.mp3",
  weight: 23,
  photo: "https://example.com/photos/eurasian_nuthatch.jpg"
)

Bird.create(
  common_name: "Common Chaffinch",
  scientific_name: "Fringilla coelebs",
  description: "Known for its bright plumage and cheerful song.",
  habitat: "Woodlands, gardens, parks.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 33,
  common_location: "Europe",
  bird_habitat_type: "Woodland and Urban",
  bird_size: "Medium",
  diet: "Insects, seeds.",
  max_velocity: 38,
  rarity: "Common",
  sound_url: "https://example.com/sound/common_chaffinch.mp3",
  weight: 28,
  photo: "https://example.com/photos/common_chaffinch.jpg"
)

Bird.create(
  common_name: "Common Wood Pigeon",
  scientific_name: "Columba palumbus",
  description: "A large species of pigeon with a distinctive white neck patch.",
  habitat: "Woodlands, fields, parks.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 25,
  common_location: "Europe",
  bird_habitat_type: "Woodland and Urban",
  bird_size: "Large",
  diet: "Seeds, grains, fruits.",
  max_velocity: 80,
  rarity: "Common",
  sound_url: "https://example.com/sound/common_wood_pigeon.mp3",
  weight: 500,
  photo: "https://example.com/photos/common_wood_pigeon.jpg"
)

Bird.create(
  common_name: "European Goldfinch",
  scientific_name: "Carduelis carduelis",
  description: "Small bird with a red face and a black-and-white head.",
  habitat: "Gardens, parks, woodlands.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 36,
  common_location: "Europe",
  bird_habitat_type: "Woodland and Urban",
  bird_size: "Small",
  diet: "Seeds, especially thistles and teasels.",
  max_velocity: 45,
  rarity: "Common",
  sound_url: "https://example.com/sound/european_goldfinch.mp3",
  weight: 14,
  photo: "https://example.com/photos/european_goldfinch.jpg"
)

Bird.create(
  common_name: "Eurasian Magpie",
  scientific_name: "Pica pica",
  description: "A black and white bird, known for its intelligence and complex social structure.",
  habitat: "Woodlands, fields, urban areas.",
  conservation_status: "Least Concern",
  migrates: false,
  experience_points: 38,
  common_location: "Europe",
  bird_habitat_type: "Urban and Rural",
  bird_size: "Medium",
  diet: "Omnivorous - insects, small mammals, fruits, seeds.",
  max_velocity: 50,
  rarity: "Common",
  sound_url: "https://example.com/sound/eurasian_magpie.mp3",
  weight: 200,
  photo: "https://example.com/photos/eurasian_magpie.jpg"
)

puts "Bird seeds created: #{Bird.count} 🐣"
