Author.destroy_all
Book.destroy_all

puts "🌱 Seeding spices..."
Author.create(author_name: "Chuck Klosterman")
Author.create(author_name: "Kurt Vonnegut Jr.")
Author.create(author_name: "Will Wight")
Author.create(author_name: "T.J. Klune")
Book.create(name: "Sex, Drugs, and Cocoa Puffs: A Low Culture Manifesto",author: Author.first, genre: "Essays", author_id: 1)
Book.create(name: "Killing Yourself to Live: 85% of a True Story",author: Author.first, genre: "Essays", author_id: 1)
Book.create(name: "Breakfast of Champions", author: Author.second, genre: "Science Fiction", author_id:2)
Book.create(name: "Cat's Cradle", author: Author.second, genre: "Science Fiction", author_id:2)
Book.create(name: "A Man Without a Country", author: Author.second, genre: "Essays", author_id:2)
Book.create(name: "Unsouled(Cradle #1)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Soulsmith(Cradle #2)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Blackflame(Cradle #3)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Skysworn(Cradle #4)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Ghostwater(Cradle #5)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Underlord(Cradle #6)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Uncrowned(Cradle #7)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Wintersteel(Cradle #8)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Bloodline(Cradle #9)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "Reaper(Cradle #10)", author: Author.third, genre: "Fantasy", author_id: 3)
Book.create(name: "The House in the Cerulean Sea", author: Author.fourth, genre: "Fantasy", author_id: 4)
puts "✅ Done seeding!"
