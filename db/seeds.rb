require_relative("../models/artist.rb")
require_relative("../models/exhibit.rb")
require("pry-byebug")

Artist.delete_all
Exhibit.delete_all

artist1 = Artist.new({
  "name" => "Tora"
  })

artist1.save()

artist2 = Artist.new({
  "name" => "Anomalie"
  })

artist2.save()

artist3 = Artist.new({
  "name" => "Janelle Monae"
  })

artist3.save()

artist4 = Artist.new({
  "name" => "Amon Tobin"
  })

artist4.save()

artist5 = Artist.new({
  "name" => "Aphex Twin"
  })

artist5.save()

artist6 = Artist.new({
  "name" => "Autechre"
  })

artist6.save()

artist7 = Artist.new({
  "name" => "Xavier Omär"
  })

artist7.save()

artist8 = Artist.new({
  "name" => "Sam Gellaitry"
  })

artist8.save()

artist9 = Artist.new({
  "name" => "The Internet"
  })

artist9.save()

exhibit1 = Exhibit.new({
  "artist_id" => artist1.id
  "title" => "Jaigantic (Galimatias Remix)"
  "category" => "Disney IndieDisco"
  })

exhibit1.save()

exhibit2 = Exhibit.new({
  "artist_id" => artist2.id
  "title" => "Métropole"
  "category" => "Electric Jazz"
  })

exhibit2.save()

exhibit3 = Exhibit.new({
  "artist_id" => artist3.id
  "title" => "Can't Live Without Your Love"
  "category" => "Funk"
  })

exhibit3.save()

exhibit4 = Exhibit.new({
  "aritst_id" => artist4.id
  "title" => "Foley Room"
  "category" => "Found Sound/Footwork"
  })

exhibit4.save()

exhibit5 = Exhibit.new({
  "artist_id" => artist5.id
  "title" => "Come On You Slags"
  "category" => "Electronic/IDM"
  })

exhibit5.save()

exhibit6 = Exhibit.new({
  "artist_id" => artist6.id
  "title" => "plyPhon"
  "category" => "Algorithmic/IDM"
  })

exhibit6.save()

exhibit7 = Exhibit.new({
  "artist_id" => artist7.id
  "title" => "If This Is Love"
  "category" => "Electric Soul"
  })

exhibit7.save()

exhibit8 = Exhibit.new({
  "artist_id" => artist8.id
  "title" => "Ceremony"
  "category" => "AquaCrunk"
  })

exhibit8.save()

exibit9 = Exhibit.new({
  "artist_id" => artist9.id
  "title" => "Get Away"
  "category" => "R&B/HipHop"
  })


binding.pry
nil
