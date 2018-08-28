require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

#INDEX OF ARTISTS
get '/artists' do
  @artists = Artist.all
  erb( :"artists/index" )
end

#NEW ARTIST
get '/artists/new' do
  erb( :"artists/new" )
end

#CREATE ARTIST
post '/artists' do
  create_artist = Artist.new(params)
  create_artist.save()
  redirect to '/managers'
end

#SHOW ARTIST
get '/artists/:id' do
  @artist = Artist.find(params['id'].to_i)
  erb( :"artists/show" )
end

#EDIT ARTIST
get '/artists/:id/edit' do
  @artist = Artist.find(params['id'].to_i)
  @exhibits = Exhibit.all
  erb( :"artists/edit" )
end

#UPDATE ARTIST
post '/artists/:id' do
  update_artist = Artist.new(params)
  update_artist.edit()
  redirect to '/managers'
end

#DELETE ARTIST
delete '/artists/:id/delete' do
  delete_artist = Artist.find(params['id'].to_i)
  delete_artist.delete()
  redirect to '/managers'
end

#SEARCH ARTISTS BY NAME
get '/artists/name' do
  erb( :"artists/name" )
end

#SEARCH ARTISTS BY EXHIBIT
get '/artists/exhibit' do
  erb( :"artists/exhibit" )
end
