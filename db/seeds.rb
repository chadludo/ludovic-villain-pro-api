puts "start seeds"

Project.destroy_all
Category.destroy_all
User.destroy_all

# USER
puts "creation user start"
ludovic = User.create!(email: "chadludo@gmail.com", password: "chad$195")

# CATEGORIES
puts "creation category start"
affiche = Category.create!(name: "Affiche")
webdesign = Category.create!(name: "Webdesign")
developpement = Category.create!(name: "Affiche")
elearning = Category.create!(name: "E-learning")
uidesign = Category.create!(name: "UI design")

# PROJECTS
puts "creation projects start"
beaumanoir = Project.create!(name: "Beaumanoir", user: ludovic, category: elearning, description: "Conception d’un site e-learning pour former les équipes du groupe Beaumanoir (Cache Cache, Morgan…) à la charte éthique de l’entreprise.", date:"2019", role:"Mes objectifs sur le projet Charte Ethique étaient de traduire visuellement des sujets importants pour le groupe de manière ludique et moderne. L’interaction et le mouvement ont donc été au cœur de mes réflexions pour sa conception. Les éléments de navigation se veulent discrets et élégants afin de ne pas surcharger l’interface. L’utilisateur peut ainsi pleinement se concentrer sur le contenu pédagogique.")
wots = Project.create!(name: "Women of the Seas", user: ludovic, category: uidesign, description: "Women of Seas est une série de podcasts lancée par Clémentine Moulin et Antoine Clément en 2019. Ils mettent en avant des portraits de femmes actrices du monde de la mer. Le concept des « Minicasts » permet aux utilisatrices d’enregistrer des petites pastilles audio de quelques minutes et de les partager avec la communauté.", date:"2020", role: "Dans le cadre de ma formation développeur d’application web au Wagon Nantes, j’ai eu l’opportunité, avec l’aide d’autres élèves, de concevoir cette application web pour mettre en avant ce contenu audio et permettre à d’autres femmes de raconter leurs anecdotes. Mon rôle s’est principalement orienté vers l’UI (Figma) ainsi que la partie front-end (HTML/CSS et Javascript). Le site est un MVP (Minimum Viable Project) développé uniquement dans sa version mobile pour l’instant.")
capenfants = Project.create!(name: "Crèches Cap Enfants", user: ludovic, category: uidesign, description: "Groupement de crèches situé en région parisienne, Cap Enfants propose aux familles une pédagogie innovante basée sur la musique et le développement sensoriel de l’enfant. Cap Enfants souhaitait dynamiser son site et revoir l’UX (expérience utilisateur) afin qu’il s’adresse à la fois aux familles, aux institutions et au public intéressé par les recherches scientifiques liées à la pédagogie musicale.", date:"2020", role:"Mes tâches ont été variées durant ce projet faisant de celui-ci l’un des plus enrichissant. Une première phase de recherche m’a permis de déterminer la bonne direction artistique. Joyeuse et colorée, elle traduit les valeurs d’ouverture et de créativité de Cap Enfants. Puis j’ai réalisé l’ensemble des wireframes et zoning des différents écrans. Une librairie de composants réutilisables a été créée pour une déclinaison aisée sur chaque nouvelles pages. Responsive, le site peut être consulté sur tablette et mobile.")

puts "seeds done!"