require_relative("../models/artist.rb")
require_relative("../models/exhibit.rb")
require("pry-byebug")

Exhibit.delete_all
Artist.delete_all

artist1 = Artist.new({
  "first_name" => "Tora",
  "bio" => "Tora are an Australian electronic band formed in Byron Bay in May 2013. The founding members are Thorne Davis on drums; Shaun Johnston on bass guitar; Jo Loewenthal on lead vocals, guitar, and samples; Jai Piccone on vocals and guitar; and Tobias Tunis-Plant on vocals and synthesiser."
  })

artist1.save()

artist2 = Artist.new({
  "first_name" => "Anomalie",
  "bio" => "In 2012, classically trained keyboardist Nicolas Dupuis decided to hedge his bets and develop a new sound after becoming the first ever Yannick Nézet-Séguin award recipient. As Anomalie, he’s combined his innovative arrangements with a fusion of jazz, hip-hop and funk."
  })

artist2.save()

artist3 = Artist.new({
  "first_name" => "Janelle",
  "last_name" => "Monáe",
  "bio" => "Janelle Monáe Robinson born December 1, 1985 is an American singer, songwriter, rapper, actress, and model. She is signed to her own imprint, Wondaland Arts Society."
  })

artist3.save()

artist4 = Artist.new({
  "first_name" => "Amon",
  "last_name" => "Tobin",
  "bio" => "Amon Adonai Santos de Araújo Tobin born February 7, 1972, known as Amon Tobin, is a Brazilian musician, composer and producer of electronic music. He is noted for his unusual methodology in sound design and music production."
  })

artist4.save()

artist5 = Artist.new({
  "first_name" => "Aphex",
  "last_name" => "Twin",
  "bio" => "Richard David James born 18 August 1971, best known by his main alias Aphex Twin, is an English electronic musician raised in Cornwall. He is best known for his influential and idiosyncratic work in styles such as ambient techno and IDM during the 1990s."
  })

artist5.save()

artist6 = Artist.new({
  "first_name" => "Autechre",
  "bio" => "Autechre are an English electronic music duo consisting of Rob Brown and Sean Booth, both from Rochdale, Greater Manchester. Formed in 1987, they are one of the most popular acts signed to UK electronic label Warp Records."
  })

artist6.save()

artist7 = Artist.new({
  "first_name" => "Xavier",
  "last_name" => "Omär",
  "bio" => "Xavier Omär (formerly SPZRKT) is a singer/songwriter. While known as an R&B artist, he has also been known to experiment with many genres at a time."
  })

artist7.save()

artist8 = Artist.new({
  "first_name" => "Sam",
  "last_name" => "Gellaitry",
  "bio" => "Gellaitry, now 20, started producing at the age of 12 Scotland where he has spent much of his youth. Having been influenced by a wide-range of musical genres, he used his imagination and love of nature to begin creating eclectic soundscapes"
  })

artist8.save()

artist9 = Artist.new({
  "first_name" => "The Internet",
  "bio" => "The Internet is an American band from Los Angeles, California. It currently consists of Syd, Matt Martians, Patrick Paige II, Christopher Smith, and Steve Lacy. They have released four studio albums and three extended plays since their formation in late 2011."
  })

artist9.save()

exhibit1 = Exhibit.new({
  "artist_id" => artist1.id,
  "title" => "Jaigantic (Galimatias Remix)",
  "category" => "Disney IndieDisco",
  "date_made" => "2014-10-06",
  "link" => "https://www.youtube.com/watch?v=m_FhqLYf7jg"
  })

exhibit1.save()

exhibit2 = Exhibit.new({
  "artist_id" => artist2.id,
  "title" => "Métropole",
  "category" => "Electric Jazz",
  "date_made" => "2017-06-23",
  "link" => "https://www.youtube.com/watch?v=coYGq3Ptxcw"
  })

exhibit2.save()

exhibit3 = Exhibit.new({
  "artist_id" => artist3.id,
  "title" => "Can't Live Without Your Love",
  "category" => "Funk",
  "date_made" => "2013-09-06",
  "link" => "https://www.youtube.com/watch?v=KGcPphVHuU0"
  })

exhibit3.save()

exhibit4 = Exhibit.new({
  "artist_id" => artist4.id,
  "title" => "Foley Room",
  "category" => "Found Sound/Footwork",
  "date_made" => "2007-03-05",
  "link" => "https://www.youtube.com/watch?v=4LZWaMEFUR4"
  })

exhibit4.save()

exhibit5 = Exhibit.new({
  "artist_id" => artist5.id,
  "title" => "Come On You Slags",
  "category" => "Electronic/IDM",
  "date_made" => "1995-04-24",
  "link" => "https://www.youtube.com/watch?v=wbJq2aANCyQ"
  })

exhibit5.save()

exhibit6 = Exhibit.new({
  "artist_id" => artist6.id,
  "title" => "plyPhon",
  "category" => "Algorithmic/IDM",
  "date_made" => "2008-01-29",
  "link" => "https://www.youtube.com/watch?v=acuwRHIWL_o"
  })

exhibit6.save()

exhibit7 = Exhibit.new({
  "artist_id" => artist7.id,
  "title" => "If This Is Love",
  "category" => "Electric Soul",
  "date_made" => "2016-10-13",
  "link" => "https://www.youtube.com/watch?v=glowhhXwNeQ"
  })

exhibit7.save()

exhibit8 = Exhibit.new({
  "artist_id" => artist8.id,
  "title" => "Ceremony",
  "category" => "AquaCrunk",
  "date_made" => "2017-04-07",
  "link" => "https://youtu.be/2m2lEprDrfo?t=26s"
  })

exhibit8.save()

exibit9 = Exhibit.new({
  "artist_id" => artist9.id,
  "title" => "Get Away",
  "category" => "R&B/HipHop",
  "date_made" => "2015-06-26",
  "link" => "https://youtu.be/z32HJ7PHnKY?t=7s"
  })

binding.pry
nil
