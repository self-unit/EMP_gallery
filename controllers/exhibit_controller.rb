require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

#INDEX OF EXHIBITS
get '/exhibits' do
  @exhibits = Exhibit.all
  erb( :"exhibits/index" )
end

#NEW EXHIBIT
get '/exhibits/new' do
  erb( :"exhibits/new" )
end

#SHOW EXHIBIT
get '/exhibits/:id' do
  @exhibit = Exhibit.find(params['id'].to_i)
  erb( :"exhibits/show" )
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
  erb( :"exhibits/edit" )
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

#SEARCH EXHIBITS BY CATEGORY
get '/exhibits/category' do
  erb( :category )
end

#SEARCH EXHIBITS BY ARTIST
get '/exhibits/artist' do
  erb( :artist )
end

#SEARCH EXHIBITS BY DATE
get '/exhibits/date' do
  erb( :date )
end
