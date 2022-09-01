# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Aurthor.destroy_all
# Magazine.destroy_all

monica = Aurthor.create(name: 'Monica', age: 28)
rachel = Aurthor.create(name: 'Rachel', age: 22)
phoebe = Aurthor.create(name: 'Phoebe', age: 31)
ross = Aurthor.create(name: 'Ross', age: 27)
joey = Aurthor.create(name: 'Joey', age: 25)
chandler = Aurthor.create(name: 'Chandler', age: 26)
Magazine.create(title: 'BadaBing', aurthor: chandler)
Magazine.create(title: 'Fault in our Stars', aurthor: phoebe)
Magazine.create(title: 'Champion', aurthor: monica)
Magazine.create(title: 'Hammard', aurthor: joey)
Magazine.create(title: 'Dino', aurthor: ross)
Magazine.create(title: 'Fahsion', aurthor: ross)
Magazine.create(title: 'Hairless', aurthor: rachel)
Magazine.create(title: 'Pizza', aurthor: joey)
Magazine.create(title: 'Pakistan', aurthor: phoebe)
