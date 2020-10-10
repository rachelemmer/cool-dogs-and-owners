# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog_owner.destroy_all
Dog.destroy_all
Owner.destroy_all

ollie = Dog.create(name: "Ollie")
japhy = Dog.create(name: "Japhy")
moose = Dog.create(name: "Moose")

rachel = Owner.create(name: "Rachel")
ian = Owner.create(name: "Ian")
claire = Owner.create(name: "Claire")
kelsey = Owner.create(name: "Kelsey")

Dog_owner.create(dog: ollie, owner: rachel)
Dog_owner.create(dog: ollie, owner: ian)
Dog_owner.create(dog: moose, owner: rachel)
Dog_owner.create(dog: moose, owner: claire)
Dog_owner.create(dog: japhy, owner: kelsey)

