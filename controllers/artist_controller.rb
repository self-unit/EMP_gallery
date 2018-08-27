require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

#INDEX OF ARTISTS
get '/artists' do
  @artists = Artist.all
  erb( :index )
end

#NEW ARTIST
get '/artists/new' do
  erb( :new )
end

#CREATE ARTIST
post '/artists' do
  create_artist = Artist.new(params)
  create_artist.save()
  redirect to '/artists'
end

#SHOW ARTIST
get '/artists/:id' do
  @artist = Artist.find(params['id'].to_i)
  erb( :show )
end

#EDIT ARTIST
get '/artists/:id/edit' do
  @artist = Artist.find(params['id'].to_i)
  erb( :edit )
end

#UPDATE ARTIST
post '/artists/:id' do
  update_artist = Artist.new(params)
  update_artist.update()
  redirect to '/artists'
end

#DELETE ARTIST
delete '/artists/:id/delete' do
  delete_artist = Artist.find(params['id'].to_i)
  delete_artist.delete()
  redirect to '/artists'
end

#SEARCH ARTISTS BY NAME
get '/artists/name' do
  erb( :name )
end

#SEARCH ARTISTS BY EXHIBIT
get '/artists/exhibit' do
  erb( :exhibit )
end
