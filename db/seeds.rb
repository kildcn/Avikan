puts "Cleaning Database 🧼"
User.destroy_all

# Create Users
User.create!(
  username: 'Rebecca',
  email: 'rebecca@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/rebeccabri",
  user_xp: 930
)

User.create!(
  username: 'Chirag',
  email: 'chirag@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/rebeccabri",
  user_xp: 820
)

User.create!(
  username: 'Alberto',
  email: 'alberto@example.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/agalara",
  user_xp: 1200
)

User.create!(
  username: 'Killian',
  email: 'killian@example.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/kildcn",
  user_xp: 20
)

User.create!(
  username: 'Maksym',
  email: 'maksym@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/habidulin",
  user_xp: 960
)

User.create!(
  username: 'Emma',
  email: 'emma@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/emmvs",
  user_xp: 800
)

User.create!(
  username: 'Adam',
  email: 'adam@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 880
)

User.create!(
  username: 'Tristan',
  email: 'tristan@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 920
)

User.create!(
  username: 'Moritz',
  email: 'moritz@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 940
)

User.create!(
  username: 'Utsav',
  email: 'utsav@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 910
)

User.create!(
  username: 'Francisca',
  email: 'francisca@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 980
)

User.create!(
  username: 'Gang',
  email: 'gang@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 970
)

User.create!(
  username: 'Alex',
  email: 'alex@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 870
)

User.create!(
  username: 'Bruno',
  email: 'bruno@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 1100
)

User.create!(
  username: 'Burak',
  email: 'burak@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 860
)

User.create!(
  username: 'Elaine',
  email: 'elaine@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 810
)

User.create!(
  username: 'Maris',
  email: 'maris@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 790
)

User.create!(
  username: 'Victor',
  email: 'victor@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 780
)

User.create!(
  username: 'Puffindaddy',
  email: 'puffindaddy@test.com',
  password: '123456',
  date_joined: Date.today,
  avatar_url: "https://kitt.lewagon.com/placeholder/users/AdamTomczyk",
  user_xp: 12
)

puts "Created #{User.count} Users 🤷🏽 🙋🏻‍♀️ 💃🏼 👨🏼‍🌾"
puts "Created #{User.count} Users with Different total_xp Values 🌟"
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
  # image_url: "https://i.postimg.cc/ht9Sw-2RT/A01ROBIN.png",
  sound_url: "https://example.com/sound/european_robin.mp3",
  weight: 18
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
  # image_url: "https://i.postimg.cc/Bv7QcXGV/A02-BLACKBIRD.png",
  sound_url: "https://example.com/sound/common_blackbird.mp3",
  weight: 100
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
  # image_url: "https://i.postimg.cc/Wb0zLNMd/A03TIT.png",
  sound_url: "https://example.com/sound/great_tit.mp3",
  weight: 20
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
  # image_url: "https://i.postimg.cc/BvnnK2RF/A04SW-AL.png",
  sound_url: "https://example.com/sound/barn_swallow.mp3",
  weight: 19
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
  # image_url: "https://i.postimg.cc/JntC1qvT/A05BLUT.png",
  sound_url: "https://example.com/sound/eurasian_blue_tit.mp3",
  weight: 11
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
  # image_url: "https://i.postimg.cc/zDb37SvS/A06NUT.png",
  sound_url: "https://example.com/sound/eurasian_nuthatch.mp3",
  weight: 23
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
  # image_url: "https://i.postimg.cc/3xBwNtf7/A07CHAF.png",
  sound_url: "https://example.com/sound/common_chaffinch.mp3",
  weight: 28
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
  # image_url: "https://i.postimg.cc/bY7rBD2X/A08PIG.png",
  sound_url: "https://example.com/sound/common_wood_pigeon.mp3",
  weight: 500
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
  # image_url: "https://i.postimg.cc/0yxQ9Tfc/A10GOLD.png",
  sound_url: "https://example.com/sound/european_goldfinch.mp3",
  weight: 14
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
  weight: 200
)

puts "Bird seeds created: #{Bird.count} 🐣"

# spots

puts "Generating bird spots 🧭"

Spot.create!(
  bird_id: 1, # European Robin
  user_id: 1, # Rebecca
  address: "Brandenburg Gate, Pariser Platz, Berlin",
  latitude: 52.5162746,
  longitude: 13.3777041,
  likes: 12,
  dislikes: 2
)

Spot.create!(
  bird_id: 3, # Great Tit
  user_id: 2, # Alberto
  address: "Cologne Cathedral, Domkloster, Cologne",
  latitude: 50.9412784,
  longitude: 6.9582814,
  likes: 15,
  dislikes: 3
)

Spot.create!(
  bird_id: 5, # Eurasian Blue Tit
  user_id: 3, # Killian
  address: "Neuschwanstein Castle, Neuschwansteinstraße, Schwangau",
  latitude: 47.557574,
  longitude: 10.749800,
  likes: 20,
  dislikes: 1
)

Spot.create!(
  bird_id: 2, # Common Blackbird
  user_id: 11, # Maksym
  address: "Marienplatz, Munich",
  latitude: 48.1371079,
  longitude: 11.5753822,
  likes: 18,
  dislikes: 4
)

Spot.create!(
  bird_id: 4, # Barn Swallow
  user_id: 13, # Emma
  address: "Reichstag Building, Platz der Republik, Berlin",
  latitude: 52.5186232,
  longitude: 13.376198,
  likes: 22,
  dislikes: 2
)

Spot.create!(
  bird_id: 6, # Eurasian Nuthatch
  user_id: 6, # Adam
  address: "Miniatur Wunderland, Kehrwieder, Hamburg",
  latitude: 53.5437641,
  longitude: 9.988228,
  likes: 10,
  dislikes: 5
)

Spot.create!(
  bird_id: 7, # Common Chaffinch
  user_id: 1, # Rebecca
  address: "Dresden Frauenkirche, Neumarkt, Dresden",
  latitude: 51.0518092,
  longitude: 13.7416595,
  likes: 14,
  dislikes: 3
)

Spot.create!(
  bird_id: 8, # Common Wood Pigeon
  user_id: 3, # Killian
  address: "Heidelberg Castle, Schlosshof, Heidelberg",
  latitude: 49.4106196,
  longitude: 8.7153097,
  likes: 17,
  dislikes: 4
)

Spot.create!(
  bird_id: 9, # European Goldfinch
  user_id: 2, # Alberto
  address: "Zugspitze, Garmisch-Partenkirchen",
  latitude: 47.421066,
  longitude: 10.985365,
  likes: 25,
  dislikes: 1
)

Spot.create!(
  bird_id: 10, # Eurasian Magpie
  user_id: 15, # Maksym
  address: "Sanssouci Palace, Maulbeerallee, Potsdam",
  latitude: 52.4044196,
  longitude: 13.0365741,
  likes: 19,
  dislikes: 2
)

puts "#{Spot.count} bird spots created! 📍🌍"

# create captures

puts "Creating captures 📸"

Capture.create!(
  bird_id: 10, # Eurasian Magpie
  user_id: 12 # Killian
)

Capture.create!(
  bird_id: 9, # European Goldfinch
  user_id: 2
)

Capture.create!(
  bird_id: 8, # Common Wood Pigeon
  user_id: 3 # Killian
)

Capture.create!(
  bird_id: 7, # Common Chaffinch
  user_id: 1 # Rebecca
)

Capture.create!(
  bird_id: 6, # Eurasian Nuthatch
  user_id: 6 # Adam
)

Capture.create!(
  bird_id: 4, # Barn Swallow
  user_id: 5 # Emma
)

Capture.create!(
  bird_id: 2, # Common Blackbird
  user_id: 13 # Maksym
)

Capture.create!(
  bird_id: 2, # Common Blackbird
  user_id: 16 # Maksym
)

Capture.create!(
  bird_id: 5, # Eurasian Blue Tit
  user_id: 14 # Killian
)

Capture.create!(
  bird_id: 3, # Great Tit
  user_id: 2 # Alberto
)

Capture.create!(
  bird_id: 10,
  user_id: 3
)

Capture.create!(
  bird_id: 9,
  user_id: 3
)

Capture.create!(
  bird_id: 8,
  user_id: 3
)

Capture.create!(
  bird_id: 7,
  user_id: 3
)

Capture.create!(
  bird_id: 6,
  user_id: 3
)

puts "Wow! There are now #{Capture.count} captures! 🥳"
