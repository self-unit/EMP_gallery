require('sinatra')
require('sinatra/contrib/all')
require('pry-buybug')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

#HOME
get '/visitors' do
  erb(:)
end

#INDEX OF ARTISTS
get '/artists' do
  @artists = Artist.all
  erb( :index )
end

#SHOW ARTIST
get '/artists/:id' do
  @artist = Artist.find(params['id'].to_i)
  erb( :show )
end

#SEARCH ARTISTS BY NAME
get '/artists/name' do
  erb(:)
end

#SEARCH ARTISTS BY EXHIBIT
get '/artists/exhibit' do
  erb(:)
end

#INDEX OF EXHIBITS
get '/exhibits' do
  @exhibits = Exhibit.all
  erb( :index )
end

#SHOW EXHIBIT
get '/exhibits/:id' do
  @exhibit = Exhibit.find(params['id'].to_i)
  erb( :show )
end

#SEARCH EXHIBITS BY CATEGORY
get '/exhibits/category' do
  erb(:)
end

#SEARCH EXHIBITS BY ARTIST
get '/exhibits/artist' do
  erb(:)
end

#SEARCH EXHIBITS BY DATE
get '/exhibits/date' do
  erb(:)
end
