require('sinatra')
require('sinatra/contrib/all')
require_relative('/controllers/visitors_controller.rb')
require_relative('/controllers/managers_controller.rb')
require_relative('/controllers/artist_controller.rb')
require_relative('/controllers/exhibit_controller.rb')

get '/' do
  erb( :index )
end
