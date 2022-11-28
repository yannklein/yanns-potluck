puts "Destroy potluck and users.."
Potluck.destroy_all
User.destroy_all
puts "Done"

puts "Create Yann user..."
yann = User.create!(
  name: "Yann",
  email: "yann.klein@me.com",
  password: "password"
)
puts "Done"

puts "Create one potluck"
potluck = Potluck.create!(
  name: "Cheese party",
  date: DateTime.new(2022, 11, 27, 19, 00),
  location: "東京都目黒区中町1-8-25",
  apt_number: "MAISON DE VIN ROUGE 201号",
  user: yann
)
puts "Done"

puts "Create one stuff"
Stuff.create!(
  name: "Sake",
  quantity: "3 bottles",
  user: yann,
  potluck: potluck,
  emoji: "🍶"
)
puts "Done"

puts "Create one stuff"
Stuff.create!(
  name: "Bread",
  quantity: "2 baguettes",
  potluck: potluck,
  emoji: "🥖"
)
puts "Done"
