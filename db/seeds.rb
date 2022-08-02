# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Destroying dinosaurs..."
Dinosaur.destroy_all

puts "Dinosaurs hatching..."
dinosaurs = [
    {name: "Judith", description: "tyrannosaurus", age: 33, origin: "USA", diet: "carnivorous"},
    {name: "Samuel", description: "tyrannosaurus", age: 45, origin: "USA", diet: "carnivorous"},
    {name: "Jake", description: "tyrannosaurus", age: 28, origin: "USA", diet: "carnivorous"},
    {name: "Elle", description: "tyrannosaurus", age: 66, origin: "USA", diet: "carnivorous"},
    {name: "Carmen", description: "velociraptor", age: 22, origin: "Mongolia", diet: "carnivorous"},
    {name: "Sidney", description: "velociraptor", age: 45, origin: "Mongolia", diet: "carnivorous"},
    {name: "Duke", description: "brachiosaurus", age: 55, origin: "USA", diet: "herbivorous"},
    {name: "Soph", description: "brachiosaurus", age: 60, origin: "USA", diet: "herbivorous"},
    {name: "Amanda", description: "stegosaurus", age: 62, origin: "USA", diet: "herbivorous"},
    {name: "Ollie", description: "triceratops", age: 29, origin: "USA", diet: "herbivorous"},
    {name: "Edward", description: "iguanodon", age: 63, origin: "UK", diet: "herbivorous"},
    {name: "Olivia", description: "iguanodon", age: 22, origin: "UK", diet: "herbivorous"},
    {name: "Frank", description: "struthiomimus", age: 27, origin: "Canada", diet: "omnivorous"},
    {name: "Dolly", description: "struthiomimus", age: 39, origin: "Canada", diet: "omnivorous"},
    {name: "Chloe", description: "struthiomimus", age: 44, origin: "Canada", diet: "omnivorous"},
    {name: "Jonesy", description: "struthiomimus", age: 30, origin: "Canada", diet: "omnivorous"},
    {name: "Freddie", description: "microraptor", age: 26, origin: "China", diet: "carnivorous"},
    {name: "Noelia", description: "microraptor", age: 48, origin: "China", diet: "carnivorous"},
    {name: "Sarah", description: "spinosaurus", age: 32, origin: "Morocco", diet: "carnivorous"},
    {name: "William", description: "spinosaurus", age: 54, origin: "Morocco", diet: "carnivorous"} 
]

dinosaurs.each do |attributes|
  dinosaur = Dinosaur.create!(attributes)
  puts "Created #{dinosaur.name}"
end
puts "Finished!"


puts "Destroying Users..."
User.destroy_all

puts "Welcoming users..."

# Array literal containing the attributes for each of the user's we want to create
[
    { email: 'yulin@me.com', encrypted_password: 'P@ssword1' },
    { email: 'ruqiya@me.com', encrypted_password: 'P@ssword1' },
    { email: 'tristan@me.com', encrypted_password: 'P@ssword1' },
    { email: 'elizabeth@me.com', encrypted_password: 'P@ssword1' }
  ].each do |user_data| # Iterate over each set of user data...
    # ...create a user with each set of data...
    User.create!(user_data)
    # If we reach this line, the user was created (otherwise an exception will have been raised),
    # therefore no need to save the user in to a variable for putsing data to the terminal.
    puts "User with email: #{user_data.email} successfully created!"
  end