require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get('/') do
  erb(:index)
end

get('/result') do
  @name = params.fetch("name")
  erb(:result)
end
