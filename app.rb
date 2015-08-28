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
  @band = Band.create({:name => params.fetch("name")})
  redirect back
end

### Venues
