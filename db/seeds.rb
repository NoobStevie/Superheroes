# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
hero1 = Hero.create(name: "Steve Rogers", super_name: "Captain America")
hero2 = Hero.create(name: "Brie Larson", super_name: "Captain Marvel")
hero3 = Hero.create(name: "Benedict Cumberbatch", super_name: "Dr Strange")

power1 = Power.create(name: "Super Strength", description: "Gives the wielder super-human strengths")
power2 = Power.create(name: "Flight", description: "Gives the wielder ability to fly through skies at supersonic speed")
power3 = Power.create(name: "Super Senses", description: "Gives the wielder ability to sense danger from afar")

hero_power1 = HeroPower.create(hero: hero1, power: power1, strength: "Strong")
hero_power2 = HeroPower.create(hero: hero1, power: power3, strength: "Weak")
hero_power3 = HeroPower.create(hero: hero2, power: power2, strength: "Average")
