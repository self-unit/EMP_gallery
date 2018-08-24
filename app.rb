require('sinatra')
require('sinatra/contrib/all')
require_relative('/controllers/visitor.rb')
require_relative('/controllers/manager.rb')

get '/' do
  erb( :index )
end
