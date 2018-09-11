require 'csv'


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hotel.destroy_all

csv_text = File.read(Rails.root.join('db', 'seeds', 'mod_3_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row['name']
  t = Hotel.new
  t.name = row['name']
  t.city = row['city']
  t.country = row['country']
  t.website = row['website']
  t.cropped_image = "/images/cropped_images/c #{t.name} #{t.city}.jpg"
  t.full_image = "/images/cropped_images/#{t.name} #{t.city}.jpg"
  t.save
  puts "#{t.name} saved"
end
