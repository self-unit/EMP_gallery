require('sinatra')
require('sinatra/contrib/all')
require('pry-buybug')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

#HOME
get '/managers' do
  erb( :home )
end

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

#NEW EXHIBIT
get '/exhibits/new' do
  erb( :new )
end

#CREATE ARTIST
post '/exhibits' do
  create_exhibit = Exhibit.new(params)
  create_exhibit.save()
  redirect to '/exhibits'
end

#EDIT EXHIBIT
get '/exhibits/:id/edit' do
  @exhibit = Exhibit.find(params['id'].to_i)
  erb( :edit )
end

#UPDATE EXHIBIT
post '/exhibits/:id' do
  update_exhibit = Exhibit.new(params)
  update_exhibit.update()
  redirect to '/exhibits'
end

#DELETE EXHIBIT
delete '/exhibits/:id/delete' do
  delete_exhibit = Exhibit.find(params['id'].to_i)
  delete_exhibit.delete()
  redirect to '/exhibits'
end
