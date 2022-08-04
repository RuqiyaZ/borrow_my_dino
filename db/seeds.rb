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
    {name: "Samuel", description: "tyrannosaurus", age: 45, origin: "USA", diet: "carnivorous", user: User.all.sample},
    {name: "Jake", description: "tyrannosaurus", age: 28, origin: "USA", diet: "carnivorous", user: User.all.sample},
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
    {name: "Dolly", description: "struthiomimus", age: 39, origin: "Canada", diet: "omnivorous", user: User.all.sample},
    {name: "Chloe", description: "struthiomimus", age: 44, origin: "Canada", diet: "omnivorous", user: User.all.sample},
    {name: "Jonesy", description: "struthiomimus", age: 30, origin: "Canada", diet: "omnivorous", user: User.all.sample},
    {name: "Freddie", description: "microraptor", age: 26, origin: "China", diet: "carnivorous", user: User.all.sample},
    {name: "Noelia", description: "microraptor", age: 48, origin: "China", diet: "carnivorous", user: User.all.sample},
    {name: "Sarah", description: "spinosaurus", age: 32, origin: "Morocco", diet: "carnivorous", user: User.all.sample},
    {name: "William", description: "spinosaurus", age: 54, origin: "Morocco", diet: "carnivorous", user: User.all.sample}
]

dinosaur_images = ["https://lmg-labmanager.s3.amazonaws.com/assets/articleNo/27644/aImg/50255/tyrannosaurus-remains-hint-at-two-possible-species-distinct-from-t-rex-m.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg",
                   "https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg"
]

dinosaurs.each_with_index do |attributes, index|
  dinosaur = Dinosaur.new(attributes)
  file = URI.open(dinosaur_images[index])
  dinosaur.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  dinosaur.save
  puts "Created #{dinosaur.name}"
end

puts "Finished!"
