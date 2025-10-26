# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
# db/seeds.rb
require 'faker'

puts "Lösche alte Daten..."
Categorization.delete_all
Comment.delete_all
Category.delete_all
Todo.delete_all

puts "Erstelle Kategorien..."
categories = 5.times.map do
  Category.create!(
    name: Faker::Hobby.unique.activity,
    short: Faker::Lorem.unique.word[0..5].upcase
  )
end

puts "Erstelle Todos..."
todos = 20.times.map do
  Todo.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 3),
    color: Faker::Color.hex_color,
    deleted: [true, false].sample,
    done: [true, false].sample,
    duedate: Faker::Date.forward(days: rand(5..50)),
    pinned: [true, false].sample,
    published: [true, false].sample
  )

end

puts "Erstelle Kommentare..."
15.times do
  Comment.create!(
    body: Faker::Lorem.sentence(word_count: rand(5..15)),
    todo: todos.sample
  )
end

puts "Erstelle Kategorisierungen..."
15.times do
  Categorization.create!(
    todo: todos.sample,
    category: categories.sample
  )
end

puts "✅ Seed-Daten erfolgreich erstellt!"
puts " - #{Category.count} Kategorien"
puts " - #{Todo.count} Todos"
puts " - #{Comment.count} Kommentare"
puts " - #{Categorization.count} Kategorisierungen"
