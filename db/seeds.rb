require 'open-uri'
require 'json'

10.times do |num|
  url = "http://tmdb.lewagon.com/movie/top_rated?page=#{num + 1}"
  movies_serialized = URI.open(url).read
  movies = JSON.parse(movies_serialized)
  movies['results'].each do |result|
    Movie.create(title: result['title'],
                 overview: result['overview'],
                 rating: result['vote_average'],
                 poster_url: "https://image.tmdb.org/t/p/w500/#{result['poster_path']}")
    puts "Seeded #{result['title']}"
  end
end

puts '============================'
puts "Seeded #{Movie.count} movies!!"
