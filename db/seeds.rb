# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'destroy all gardens and plants'
Garden.destroy_all
puts 'Gardesn destroyed'

puts 'Create gardens and plants'
name_garden = ["jardin de mamie", "jardin japonais", "jardins de curé"]
name=["roses", "primeveres", "tulipes"]
10.times do
  garden = Garden.create!(name: name_garden.shuffle[0], image:"https://loremflickr.com/g/1280/1080/garden")
  Plant.create!(name: name.shuffle[0], image:"https://loremflickr.com/g/500/500/plant", garden_id: garden.id)
end
