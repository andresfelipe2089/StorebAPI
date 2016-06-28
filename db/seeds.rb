# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

org1 = Organization.create(title: 'compay', description: 'none', org_type: 'type org')
org2 = Organization.create(title: 'compay 2', description: 'none', org_type: 'type org')
org3 = Organization.create(title: 'compay 3', description: 'none', org_type: 'type org')