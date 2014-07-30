# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: "student")
Role.create(name: "producer")
Role.create(name: "instructor")
Role.create(name: "teaching assistant")
Role.create(name: "admin")



Location.destroy_all


Location.create(name: "London")
Location.create(name: "New York")
Location.create(name: "Seattle")
Location.create(name: "Melbourne")
Location.create(name: "Sydney")
Location.create(name: "Hong Kong")
Location.create(name: "San Francisco")
Location.create(name: "Los Angeles")
Location.create(name: "Boston")
Location.create(name: "Chicago")
Location.create(name: "Atlanta")
Location.create(name: "Washington D.C.")

Status.create(thing: "student", statusname: "active")
Status.create(thing: "student", statusname: "inactive")
Status.create(thing: "producer", statusname: "active")
Status.create(thing: "producer", statusname: "inactive")
Status.create(thing: "instructor", statusname: "active")
Status.create(thing: "instructor", statusname: "inactive")
Status.create(thing: "admin", statusname: "active")
Status.create(thing: "admin", statusname: "inactive")
Status.create(thing: "course", statusname: "active")
Status.create(thing: "course", statusname: "inactive")
Status.create(thing: "lesson", statusname: "active")
Status.create(thing: "lesson", statusname: "inactive")
Status.create(thing: "cohort", statusname: "active")
Status.create(thing: "cohort", statusname: "inactive")
Status.create(thing: "tutorial", statusname: "active")
Status.create(thing: "tutorial", statusname: "inactive")

