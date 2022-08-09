# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Destroying dinosaurs..."
Dinosaur.destroy_all
puts "Destroying Users..."
User.destroy_all

puts "Welcoming users..."

[
    { email: 'yulin@me.com', password: 'P@ssword1' },
    { email: 'ruqiya@me.com', password: 'P@ssword1' },
    { email: 'tristan@me.com', password: 'P@ssword1' },
    { email: 'lucy@me.com', password: 'P@ssword1' },
    { email: 'elizabeth@me.com', password: 'P@ssword1' }
  ].each do |user_data| # Iterate over each set of user data...
    # ...create a user with each set of data...
    User.create!(user_data)
    # If we reach this line, the user was created (otherwise an exception will have been raised),
    # therefore no need to save the user in to a variable for putsing data to the terminal.
    puts "User with email: #{user_data["email"]} successfully created!"
  end

puts "Dinosaurs hatching..."

dinosaurs = [
    {name: "Judith", description: "tyrannosaurus", age: 33, origin: "USA", diet: "carnivorous", user: User.all.sample},
    {name: "Elle", description: "tyrannosaurus", age: 66, origin: "USA", diet: "carnivorous", user: User.all.sample},
    {name: "Carmen", description: "velociraptor", age: 22, origin: "Mongolia", diet: "carnivorous", user: User.all.sample},
    {name: "Sidney", description: "velociraptor", age: 45, origin: "Mongolia", diet: "carnivorous", user: User.all.sample},
    {name: "Duke", description: "brachiosaurus", age: 55, origin: "USA", diet: "herbivorous", user: User.all.sample},
    {name: "Soph", description: "brachiosaurus", age: 60, origin: "USA", diet: "herbivorous", user: User.all.sample},
    {name: "Amanda", description: "stegosaurus", age: 62, origin: "USA", diet: "herbivorous", user: User.all.sample},
    {name: "Ollie", description: "triceratops", age: 29, origin: "USA", diet: "herbivorous", user: User.all.sample},
    {name: "Edward", description: "iguanodon", age: 63, origin: "UK", diet: "herbivorous", user: User.all.sample},
    {name: "Olivia", description: "iguanodon", age: 22, origin: "UK", diet: "herbivorous", user: User.all.sample},
    {name: "Frank", description: "struthiomimus", age: 27, origin: "Canada", diet: "omnivorous", user: User.all.sample},
    {name: "Dolly", description: "struthiomimus", age: 39, origin: "Canada", diet: "omnivorous", user: User.all.sample}
    # {name: "Chloe", description: "struthiomimus", age: 44, origin: "Canada", diet: "omnivorous", user: User.all.sample},
    # {name: "Jonesy", description: "struthiomimus", age: 30, origin: "Canada", diet: "omnivorous", user: User.all.sample},
    # {name: "Noelia", description: "microraptor", age: 48, origin: "China", diet: "carnivorous", user: User.all.sample},
    # {name: "Sarah", description: "spinosaurus", age: 32, origin: "Morocco", diet: "carnivorous", user: User.all.sample},
    # {name: "William", description: "spinosaurus", age: 54, origin: "Morocco", diet: "carnivorous", user: User.all.sample}
]

dinosaur_images = ["https://lmg-labmanager.s3.amazonaws.com/assets/articleNo/27644/aImg/50255/tyrannosaurus-remains-hint-at-two-possible-species-distinct-from-t-rex-m.jpg",
                   "https://bbts1.azureedge.net/images/p/full/2020/04/af143f14-8a9c-4676-92c9-65421e9d67c4.jpg",
                   "https://a-z-animals.com/media/2022/05/shutterstock_1448616338-1024x614.jpg",
                   "https://abcdino.com/wp-content/uploads/2020/07/Velociraptor-running.jpg",
                   "https://media.hswstatic.com/eyJidWNrZXQiOiJjb250ZW50Lmhzd3N0YXRpYy5jb20iLCJrZXkiOiJnaWZcL0JyYWNoaW9zYXVydXMuanBnIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoiMTIwMCJ9fX0=",
                   "https://scale.coolshop-cdn.com/product-media.coolshop-cdn.com/BK85TH/ee4c966c17c24313af26c68bade87100.jpg/f/schleich-brachiosaurus-14515.jpg",
                   "https://media.istockphoto.com/photos/dinosaur-stegosaurus-and-monster-model-isolated-white-background-picture-id827814140?b=1&k=20&m=827814140&s=170667a&w=0&h=bsVNCPrpXjnpmX1qbnKa_zUMgMsRw8PzAzX0xsNonno=",
                   "https://www.thoughtco.com/thmb/r8qGttHfPqIvhsZ6wnPbgJXazc8=/650x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-165564463-0fbc3a48855b4c0d9548add9045df1e2.jpg",
                   "https://static.wikia.nocookie.net/thelostworld/images/e/e0/Iguanodon.jpg/revision/latest?cb=20190903172837",
                   "https://www.everythingdinosaur.com/wp-content/uploads/2021/12/PNSO-Harvey-the-Iguanodon-lateral.jpg",
                   "https://i.pinimg.com/originals/33/e5/21/33e52124bbae261ac896ba9b47ae3b5c.png",
                   "https://i.pinimg.com/736x/e7/e3/41/e7e341dbc333c50d626595f04eae2e9d.jpg",
                   "https://images.cults3d.com/S1UtOGou_vuq77Q1M2Wmo9_oaQU=/516x516/https://files.cults3d.com/uploaders/18032423/illustration-file/dd94b279-d16f-48f6-8f97-5cd6427fbd82/1.png",
                   "https://64.media.tumblr.com/ae25fab178d3d2e570d55aa1175c3cd3/1efc64ddc57fdfa0-c2/s540x810/93c00bff55f55826f0643b7c9c97f0b0a1afd246.pnj",
                   "https://static.wikia.nocookie.net/pkgame/images/6/61/Microraptor_2.png/revision/latest?cb=20210508214807",
                   "https://blog.paultonspark.co.uk/app/uploads/2022/04/Spinosaurus-had-straight-teeth-and-a-sail-on-its-back.jpg",
                   "https://bbts1.azureedge.net/images/p/full/2020/10/11105c2f-de6c-4e21-8150-fc270a0191bd.jpg"
]

dinosaurs.each_with_index do |attributes, index|
  dinosaur = Dinosaur.new(attributes)
  file = URI.open(dinosaur_images[index])
  dinosaur.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  dinosaur.save
  puts "Created #{dinosaur.name}"
end

puts "Finished!"
