require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @bands = Band.all()
  @venues = Venue.all()
  erb(:index)
end

post '/add_band' do
  band_name = params.fetch("band_name")
  rating = params.fetch("rating").to_f
  @band_name = Band.new(band_name: band_name, rating: rating)
    if @band_name.save()
      redirect('/')
    else
      erb(:errors)
    end
end

get '/band/:id' do
  @band = Band.find(params.fetch("id"))
  erb :band
end

patch("/band/:id") do
  band_name = params.fetch("band_name")
  rating = params.fetch("rating").to_f
  @band = Band.find(params.fetch("id").to_i)
  @band.update({:band_name => band_name, :rating => rating})
  erb(:band)
end

delete '/band/:id' do
  band = Band.find(params.fetch("id").to_i)
  band.delete
  redirect '/'
end

post '/add_venue' do
  venue_name = params.fetch("venue_name")
  @venue_name = Venue.new(venue_name: venue_name)
  if @venue_name.save()
    redirect('/')
  else
    erb(:errors_venue)
  end
end

get '/venue/:id' do
  @venue = Venue.find(params.fetch("id"))
  erb :venue
end
