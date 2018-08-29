require('sinatra')
require('sinatra/contrib/all')
require_relative('controllers/manager_controller.rb')
require_relative('controllers/artist_controller.rb')
require_relative('controllers/exhibit_controller.rb')
require_relative('controllers/category_controller.rb')

get '/' do
  @artists = Artist.all
  @categories = Category.all
  if (params['category_id'])
    @exhibits = Exhibit.find_by_category(params['category_id'])
  elsif (params['artist_id'])
    @exhibits = Exhibit.find_by_artist(params['artist_id'])
  else
    @exhibits = Exhibit.all
  end
  erb( :"visitors/index" )
end
