require('sinatra')
# require('sinatra/contrib/all') if development ?
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
require_relative('../models/category.rb')

#INDEX OF ARTISTS
get '/artists' do
  @exhibits = Exhibit.all
  if (params['artist_id'])
    @artists = Artist.find(params['artist_id'])
  else
    @artists = Artist.all
  end
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
  @artist = Artist.find(params['id'].to_i)[0]
  erb( :"artists/show" )
end

#EDIT ARTIST
get '/artists/:id/edit' do
  @artist = Artist.find(params['id'].to_i)[0]
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
  delete_artist = Artist.find(params['id'].to_i)[0]
  delete_artist.delete()
  redirect to '/managers'
end
