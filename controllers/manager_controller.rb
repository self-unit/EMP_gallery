require('sinatra')
# require('sinatra/contrib/all') if development ?
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
require_relative('../models/category.rb')

#HOME
get '/managers' do
  @artists = Artist.all
  @exhibits = Exhibit.all
  @categories = Category.all
  erb( :"managers/index" )
end
