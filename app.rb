require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get("/") do
  erb(:index)
end

### Bands

get("/bands") do
  @bands = Band.all()
  erb(:bands)
end

post("/bands") do
  @band = Band.create({:name => params.fetch("band_name")})
  redirect back
end

get("/bands/:id") do
  @band = Band.find(params.fetch("id").to_i())
  @venues = Venue.all()
  erb(:band)
end

patch("/bands/:id/name") do
  @band = Band.find(params.fetch("id").to_i())
  @band.update({:name => params.fetch("update_band_name")})
  redirect back
end

patch("/bands/:id/venues") do
  @band = Band.find(params.fetch("id").to_i())
  @band.update({:venue_ids => params.fetch("venue_ids")})
  redirect back
end

delete("/bands/:id") do
  @band = Band.find(params.fetch("id").to_i())
  @band.delete()
  redirect("/bands")
end

### Venues

post("/venues") do
  @venue = Venue.create({:name => params.fetch("venue_name")})
  redirect back
end
