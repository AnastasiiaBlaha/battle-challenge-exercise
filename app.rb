#app.rb
require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "Hello!"
end

get '/secret' do
  "welcome to this secret page ;)"
end

get '/random-cat' do
    erb(:index)
end
