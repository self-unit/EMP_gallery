require_relative("../models/artist.rb")
require_relative("../models/category.rb")
require_relative("../models/exhibit.rb")
require("pry-byebug")

Exhibit.delete_all
Category.delete_all
Artist.delete_all

artist1 = Artist.new({
  "first_name" => "Tora",
  "bio" => "Tora are an Australian electronic band formed in Byron Bay in May 2013. The founding members are Thorne Davis on drums; Shaun Johnston on bass guitar; Jo Loewenthal on lead vocals, guitar, and samples; Jai Piccone on vocals and guitar; and Tobias Tunis-Plant on vocals and synthesiser.",
  "link" => "https://i.scdn.co/image/9cc5d05fec2084f25b39566804c8b0eedb9e3c16"
  })

artist1.save()

artist2 = Artist.new({
  "first_name" => "Anomalie",
  "bio" => "In 2012, classically trained keyboardist Nicolas Dupuis decided to hedge his bets and develop a new sound after becoming the first ever Yannick Nézet-Séguin award recipient. As Anomalie, he’s combined his innovative arrangements with a fusion of jazz, hip-hop and funk.",
  "link" => "https://d3jjg4nf4bbybe.cloudfront.net/u/195793/602470c0c92cd969f341fada58d8e32c022f9ff1/original/p7a4720-square.jpg"
  })

artist2.save()

artist3 = Artist.new({
  "first_name" => "Janelle",
  "last_name" => "Monáe",
  "bio" => "Janelle Monáe Robinson born December 1, 1985 is an American singer, songwriter, rapper, actress, and model. She is signed to her own imprint, Wondaland Arts Society.",
  "link" => "https://vignette.wikia.nocookie.net/supernatural-ties/images/6/64/Janelle-monae.jpg/revision/latest?cb=20180423055951"
  })

artist3.save()

artist4 = Artist.new({
  "first_name" => "Amon",
  "last_name" => "Tobin",
  "bio" => "Amon Adonai Santos de Araújo Tobin born February 7, 1972, known as Amon Tobin, is a Brazilian musician, composer and producer of electronic music. He is noted for his unusual methodology in sound design and music production.",
  "link" => "https://pp.userapi.com/c620316/v620316524/14d3a/Qo07krYzCuc.jpg?ava=1"
  })

artist4.save()

artist5 = Artist.new({
  "first_name" => "Aphex",
  "last_name" => "Twin",
  "bio" => "Richard David James born 18 August 1971, best known by his main alias Aphex Twin, is an English electronic musician raised in Cornwall. He is best known for his influential and idiosyncratic work in styles such as ambient techno and IDM during the 1990s.",
  "link" => "https://pbs.twimg.com/profile_images/1096942082/28ad84ebe563235ce83aef72a3a961df_400x400.jpg"
  })

artist5.save()

artist6 = Artist.new({
  "first_name" => "Autechre",
  "bio" => "Autechre are an English electronic music duo consisting of Rob Brown and Sean Booth, both from Rochdale, Greater Manchester. Formed in 1987, they are one of the most popular acts signed to UK electronic label Warp Records.",
  "link" => "https://images.sk-static.com/images/media/profile_images/artists/49992/huge_avatar"
  })

artist6.save()

artist7 = Artist.new({
  "first_name" => "Xavier",
  "last_name" => "Omär",
  "bio" => "Xavier Omär (formerly SPZRKT) is a singer/songwriter. While known as an R&B artist, he has also been known to experiment with many genres at a time.",
  "link" => "https://mk0bookingagent97efu.kinstacdn.com/wp-content/uploads/2017/07/Xavier-Omar-Contact-Information.jpg"
  })

artist7.save()

artist8 = Artist.new({
  "first_name" => "Sam",
  "last_name" => "Gellaitry",
  "bio" => "Gellaitry, now 20, started producing at the age of 12 Scotland where he has spent much of his youth. Having been influenced by a wide-range of musical genres, he used his imagination and love of nature to begin creating eclectic soundscapes",
  "link" => "https://yt3.ggpht.com/a-/ACSszfEzTyDTtmvF9xkjXQqI3VKtsZ_2YJRM0cjUkg=s900-mo-c-c0xffffffff-rj-k-no"
  })

artist8.save()

artist9 = Artist.new({
  "first_name" => "The",
  "last_name" => "Internet",
  "bio" => "The Internet is an American band from Los Angeles, California. It currently consists of Syd, Matt Martians, Patrick Paige II, Christopher Smith, and Steve Lacy. They have released four studio albums and three extended plays since their formation in late 2011.",
  "link" => "https://video-images.vice.com/articles/5b0d772c3b76b60008a48d90/lede/1527841591517-theinternet-header_1557x700_acf_cropped.jpeg?crop=0.4496xw%3A1xh%3B0.3115xw%2C0xh&resize=650%3A*&output-quality=55"
  })

artist9.save()

category1 = Category.new({
  "name" => "IndieDisco"
  })

category1.save()

category2 = Category.new({
  "name" => "Jazz"
  })

category2.save()

category3 = Category.new({
  "name" => "Funk/Soul"
  })

category3.save()

category4 = Category.new({
  "name" => "Electronica"
  })

category4.save()

category5 = Category.new({
  "name" => "IDM"
  })

category5.save()

category6 = Category.new({
  "name" => "Bass"
  })

category6.save()

category7 = Category.new({
  "name" => "R&B/HipHop"
  })

category7.save()

exhibit1 = Exhibit.new({
  "artist_id" => artist1.id,
  "title" => "Jaigantic (Galimatias Remix)",
  "category_id" => category1.id,
  "date_made" => "2014-10-06",
  "link" => "https://www.youtube-nocookie.com/embed/m_FhqLYf7jg?"
  })

exhibit1.save()

exhibit2 = Exhibit.new({
  "artist_id" => artist2.id,
  "title" => "Métropole",
  "category_id" => category2.id,
  "date_made" => "2017-06-23",
  "link" => "https://www.youtube-nocookie.com/embed/coYGq3Ptxcw?"
  })

exhibit2.save()

exhibit3 = Exhibit.new({
  "artist_id" => artist3.id,
  "title" => "Can't Live Without Your Love",
  "category_id" => category3.id,
  "date_made" => "2013-09-06",
  "link" => "https://www.youtube-nocookie.com/embed/KGcPphVHuU0?"
  })

exhibit3.save()

exhibit4 = Exhibit.new({
  "artist_id" => artist4.id,
  "title" => "Foley Room",
  "category_id" => category4.id,
  "date_made" => "2007-03-05",
  "link" => "https://www.youtube-nocookie.com/embed/4LZWaMEFUR4?"
  })

exhibit4.save()

exhibit5 = Exhibit.new({
  "artist_id" => artist5.id,
  "title" => "Come On You Slags",
  "category_id" => category5.id,
  "date_made" => "1995-04-24",
  "link" => "https://www.youtube-nocookie.com/embed/wbJq2aANCyQ?"
  })

exhibit5.save()

exhibit6 = Exhibit.new({
  "artist_id" => artist6.id,
  "title" => "plyPhon",
  "category_id" => category5.id,
  "date_made" => "2008-01-29",
  "link" => "https://www.youtube-nocookie.com/embed/acuwRHIWL_o?"
  })

exhibit6.save()

exhibit7 = Exhibit.new({
  "artist_id" => artist7.id,
  "title" => "If This Is Love",
  "category_id" => category3.id,
  "date_made" => "2016-10-13",
  "link" => "https://www.youtube-nocookie.com/embed/glowhhXwNeQ?"
  })

exhibit7.save()

exhibit8 = Exhibit.new({
  "artist_id" => artist8.id,
  "title" => "Ceremony",
  "category_id" => category6.id,
  "date_made" => "2017-04-07",
  "link" => "https://www.youtube-nocookie.com/embed/2m2lEprDrfo?"
  })

exhibit8.save()

exhibit9 = Exhibit.new({
  "artist_id" => artist9.id,
  "title" => "Get Away",
  "category_id" => category7.id,
  "date_made" => "2015-06-26",
  "link" => "https://www.youtube-nocookie.com/embed/z32HJ7PHnKY?"
  })

exhibit9.save()

exhibit10 = Exhibit.new({
  "artist_id" => artist1.id,
  "title" => "Too Far",
  "category_id" => category1.id,
  "date_made" => "2017-06-19",
  "link" => "https://www.youtube-nocookie.com/embed/N8MrhW5VHQU?"
  })

exhibit10.save()

exhibit11 = Exhibit.new({
  "artist_id" => artist2.id,
  "title" => "Daybreak",
  "category_id" => category2.id,
  "date_made" => "2017-06-23",
  "link" => "https://www.youtube-nocookie.com/embed/4NZvEJtkO5U?"
  })

exhibit11.save()

exhibit12 = Exhibit.new({
  "artist_id" => artist2.id,
  "title" => "Velours",
  "category_id" => category2.id,
  "date_made" => "2017-06-23",
  "link" => "https://www.youtube-nocookie.com/embed/VdGoLflU4Fc?"
  })

exhibit12.save()

exhibit13 = Exhibit.new({
  "artist_id" => artist4.id,
  "title" => "Back From Space",
  "category_id" => category4.id,
  "date_made" => "2002-10-14",
  "link" => "https://www.youtube-nocookie.com/embed/Inke9ToHaQI?"
  })

exhibit13.save()

exhibit14 = Exhibit.new({
  "artist_id" => artist7.id,
  "title" => "Blind Man",
  "category_id" => category3.id,
  "date_made" => "016-10-13",
  "link" => "https://www.youtube-nocookie.com/embed/nS_V9iXBtxw?"
  })

exhibit14.save()

exhibit15 = Exhibit.new({
  "artist_id" => artist8.id,
  "title" => "Jacket Weather",
  "category_id" => category6.id,
  "date_made" => "2016-08-12",
  "link" => "https://www.youtube-nocookie.com/embed/r97H31EVVhI?"
  })

exhibit15.save()

exhibit16 = Exhibit.new({
  "artist_id" => artist5.id,
  "title" => "produk 29[101]",
  "category_id" => category5.id,
  "date_made" => "2014-09-22",
  "link" => "https://www.youtube-nocookie.com/embed/38enrQGRDhA?"
  })

exhibit16.save()

binding.pry
nil
