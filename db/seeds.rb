# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

Movie.destroy_all

puts "DB Cleaned"


url = 'http://tmdb.lewagon.com/movie/top_rated'
490.times do |i|
  puts "Importing movies from page #{i + 1}"
  results = JSON.parse(URI.open("#{url}?page=#{i + 1}").read)['results']
  results.each do |result|
    Movie.create(title: result['original_title'], overview: result['overview'], poster_url: "https://image.tmdb.org/t/p/original/#{result['poster_path']}", rating: result['vote_average'])
  end
end



puts "Movies seeded"
