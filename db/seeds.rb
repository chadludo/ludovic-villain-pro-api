# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "start seeds"

# USER
puts "creation user start"
administrateur = User.create!(email: "chadludo@gmail.com", password: "chad$195")

# CATEGORIES
puts "creation category start"
affiche = Category.create!(name: "Affiche")
webdesign = Category.create!(name: "Webdesign")
developpement = Category.create!(name: "Affiche")
elearning = Category.create!(name: "E-learning")

# PROJECTS
puts "creation projects start"
beaumanoir = Project.create!(name: "Beaumanoir", user: "chadludo@gmail.com", description: "Conception d’un site e-learning pour former les équipes du groupe Beaumanoir (Cache Cache, Morgan…) à la charte éthique de l’entreprise.", date:"2019", role:"Mes objectifs sur le projet Charte Ethique étaient de traduire visuellement des sujets importants pour le groupe de manière ludique et moderne. L’interaction et le mouvement ont donc été au cœur de mes réflexions pour sa conception. Les éléments de navigation se veulent discrets et élégants afin de ne pas surcharger l’interface. L’utilisateur peut ainsi pleinement se concentrer sur le contenu pédagogique.")

puts "seeds done!"