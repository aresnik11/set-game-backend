# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "start"

colors = ['red', 'green', 'purple']
numbers = ["one", "two", "three"]
shapes = ["circle", "triangle", "square"]
fills = ["full", "none", "half"]

colors.each do |color|
    numbers.each do |num|
        fills.each do |fill|
            shapes.each do |shape|
                Card.create(color: color, number: num, shape: shape, fill: fill)
            end
        end
    end
end

puts "done"