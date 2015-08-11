require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places_youve_been')

get('/') do
  @places = Place.all()
  erb(:index)
end

post('/new_place') do
  location = params.fetch('place')
  place = Place.new(location)
  place.save()
  redirect('/')
end
