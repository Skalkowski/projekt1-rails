# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gists = [
  { snippet: "gdsgdsg", lang: "java", description: "sdfgdfsgsd" },
  { snippet: "gdsddsfdfssfgdsg", lang: "java", description: "sdfgdfssdfdsfdssddsgdfdfhgsd" }
]

gists.each do |gist|
  Gist.find_or_create_by(snippet: gist[:snippet], lang: gist[:lang], description: gist[:description])
end

