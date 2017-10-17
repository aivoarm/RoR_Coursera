# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Reviewer.destroy_all
#
# Reviewer.create! [
#   {name:'aivoarm', password_digest:'test123'}
# ]
#
#Book.delete_all
# 
# Book.create! [
#   {name:"The Picture of Dorian Gray", author:"Oscar Wilde"},
#   {name:"Moby-Dick or The Whale", author:"Herman Melville"},
#   {name:"The Testament", author:"Grisham John"},
#   {name:"Pygmalion", author:"Shaw  George Bernard"},
#   {name:"The Old Man and the Sea", author:"Hemingway Ernest"}
# ]

mynote = Book.find_by name: "Moby-Dick or The Whale"
mynote.notes.create![
  {title: "Interesting", note: "Was hard to read for not native English person"},
  {title: "must read", note: "everyone must read this book"}
]
