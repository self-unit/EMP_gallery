require('sinatra')
require('sinatra/contrib/all') if development ?
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
require_relative('../models/category.rb')

#INDEX OF EXHIBITS
get '/exhibits' do
  @artists = Artist.all
  @categories = Category.all
  if (params['category_id'])
    @exhibits = Exhibit.find_by_category(params['category_id'])
  elsif (params['artist_id'])
    @exhibits = Exhibit.find_by_artist(params['artist_id'])
  else
    @exhibits = Exhibit.all
  end
  erb( :"exhibits/index" )
end

#NEW EXHIBIT
get '/exhibits/new' do
  @artists = Artist.all
  @categories = Category.all
  erb( :"exhibits/new" )
end

#CREATE EXHIBIT
post '/exhibits' do
  create_exhibit = Exhibit.new(params)
  create_exhibit.save()
  redirect to '/managers'
end

#SEARCH EXHIBITS BY CATEGORY
get '/exhibits/category' do
  @artists = Artist.all
  @exhibits = Exhibit.find_by_category(params['category'])
  erb( :"visitors/index" )
end

#SHOW EXHIBIT
get '/exhibits/:id' do
  @exhibit = Exhibit.find(params['id'].to_i)
  erb( :"exhibits/show" )
end

#EDIT EXHIBIT
get '/exhibits/:id/edit' do
  @exhibit = Exhibit.find(params['id'].to_i)
  @categories = Category.all
  @artists = Artist.all
  erb( :"exhibits/edit" )
end

#UPDATE EXHIBIT
post '/exhibits/:id' do
  update_exhibit = Exhibit.new(params)
  update_exhibit.edit()
  redirect to '/managers'
end

#DELETE EXHIBIT
delete '/exhibits/:id/delete' do
  delete_exhibit = Exhibit.find(params['id'].to_i)
  delete_exhibit.delete()
  redirect to '/managers'
end
