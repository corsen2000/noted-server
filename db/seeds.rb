# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
  {
    email: 'test@test.com',
    password: 'test',
    auth_token: 'token'
  }
])

Note.create([
  {
    title: "First Note",
    content: "This is the first note.",
    tag_list: "javascript, tutorial",
    user_id: 1
  },
  {
    title: "Second Note",
    content: "This is the second note.",
    tag_list: "systems",
    user_id: 1
  }
])