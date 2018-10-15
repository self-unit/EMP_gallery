require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
require_relative('../models/category.rb')
also_reload('../models/*')

#INDEX OF CATEGORIES
get '/categories' do
  @categories = Category.all
  erb( :"categories/index" )
end

#NEW CATEGORY
get '/categories/new' do
  erb( :"categories/new")
end

#CREATE CATEGORY
post '/categories' do
  create_category = Category.new(params)
  create_category.save()
  redirect to '/managers'
end

#EDIT CATEGORY
get '/categories/:id/edit' do
  @category = Category.find(params['id'].to_i)[0]
  erb( :"categories/edit" )
end

#UPDATE CATEGORY
post '/categories/:id' do
  update_category = Category.new(params)
  update_category.edit()
  redirect to '/managers'
end

#DELETE CATEGORY
delete '/categories/:id/delete' do
  delete_category = Category.find(params['id'].to_i)[0]
  delete_category.delete()
  redirect to '/managers'
end
