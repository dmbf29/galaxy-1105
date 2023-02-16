puts "Clearing the DB..."
Planet.destroy_all
Power.destroy_all

pizza_planet = Planet.create!(
  name: 'Pizza Planet',
  # banner_url: 'https://external-preview.redd.it/mfOQ0eUPj3SldsPGqHDsSfhCpo-uHTPpJfXVEpEu5z0.jpg?auto=webp&s=2e358d7534e3b1ef9912e2f51ea71e85c092510f'
  banner_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pizza-planet-1524164902.jpg?crop=1.00xw:0.446xh;0,0.453xh&resize=480:*'
)

puts "Creating aliens..."
Alien.create!(
  name: 'E.T.',
  image_url: "https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/12/boneco-ET.jpg?w=1200&h=900&crop=1",
  planet: pizza_planet
)

Alien.create!(
  name: 'Yann',
  image_url: 'https://res.cloudinary.com/dmbf29/image/upload/c_fill,g_face/7jTDPipAwMTY6maAxPMf1z1z',
  planet: pizza_planet
)

Alien.create!(
  name: 'Chewbacca',
  image_url: 'https://imageio.forbes.com/specials-images/dam/imageserve/958761228/960x0.jpg?format=jpg&width=960',
  planet: pizza_planet
)

Alien.create!(
  name: 'Marvin the Martian',
  image_url: 'https://i.pinimg.com/736x/5c/bb/87/5cbb87ead6a3d901fb5ce15c87fd20d3--marvin-the-martian-looney-tunes.jpg',
  planet: pizza_planet
)

Alien.create!(
  name: 'Kang and Kodos Johnson',
  image_url: 'https://media1.giphy.com/media/3o6MbeBXxFJhC1OUaQ/giphy.gif',
  planet: pizza_planet
)

Alien.create!(
  name: 'Martian Leader',
  image_url: 'https://www.looper.com/img/gallery/the-untold-truth-of-mars-attacks/l-intro-1632752169.jpg',
  planet: pizza_planet
)

Alien.create!(
  name: 'Predator',
  image_url: 'https://deadline.com/wp-content/uploads/2020/11/Predator-Creature.jpg?w=1000',
  planet: pizza_planet
)

Alien.create!(
  name: 'Xenomorph XX121',
  image_url: 'https://media.wired.co.uk/photos/606db4e0c36e357873e6cd26/4:3/w_1704,h_1278,c_limit/alien_1.jpg',
  planet: pizza_planet
)

Alien.create!(
  name: 'Zoidberg',
  image_url: 'https://imgflip.com/s/meme/Futurama-Zoidberg.jpg',
  planet: pizza_planet
)

Alien.create!(
  name: 'Mark Zuckerberg',
  image_url: 'https://nypost.com/wp-content/uploads/sites/2/2022/11/mark-zuckerberg-57.jpg',
  planet: pizza_planet
)

Alien.create!(
  name: 'Alf',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/8/89/GordonShumway.png',
  planet: pizza_planet
)

Alien.create!(
  name: 'MAC',
  image_url: 'https://pyxis.nymag.com/v1/imgs/d56/0a4/8bba1a908cb22ab87b10cbf1db2d938a2f-20110316-friendlyaliens-2macandme.2x.rhorizontal.w700.jpg',
  planet: pizza_planet
)
puts "... created #{Alien.count} aliens"

puts 'Creating powers....'
20.times do
  Power.create!(
    name: Faker::Superhero.unique.power
  )
end
puts "... created #{Power.count} powers."
