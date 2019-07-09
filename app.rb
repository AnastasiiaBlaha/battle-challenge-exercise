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
    @random_name = ["Ted", "Anastasiia", "Cat"].sample
    erb(:index)
end

get '/named-cat' do
    @name = params[:name]
    p params[@name]
    erb(:index)
end
