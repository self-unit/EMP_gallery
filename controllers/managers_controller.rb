require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

#HOME
get '/managers' do
  @artists = Artist.all
  @exhibits = Exhibit.all
  erb( :"managers/index" )
end
