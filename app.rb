require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('rectangle')

get('/') do
  erb(:index)
end

get('/result') do
  
end
