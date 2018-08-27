require('sinatra')
require('sinatra/contrib/all')
require('pry-buybug')
require_relative('../models/artist.rb')
require_relative('../models/exhibit.rb')
also_reload('../models/*')

get '/artists' do
  erb(:)
end

get '/artists/:id' do
  erb(:)
end

get '/artists/new' do
  erb(:)
end

get '/artists/:id/edit' do
  erb(:)
end

get '/artists/:id/edit' do
  erb(:)
end
