# main.rb
require 'sinatra'

class Main < Sinatra::Base
  get '/' do
    "Hello, world!"
  end
  post '/:data' do
    "Your data is, #{params[:data]}!"
  end
  get '/params' do
  	# matches "GET /params?title=foo&author=bar"
  	title = params['title']
  	author = params['author']
  	# uses title and author variables; query is optional to the /posts route
  end
end