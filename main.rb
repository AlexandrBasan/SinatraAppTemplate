# main.rb
require 'sinatra'
require 'json'
require 'debugger' # Use this by insert debugger anywhere in your code.

class Main < Sinatra::Base
  get '/' do
    "Hello, world!"
    erb :main
  end
  post '/:data' do
    "Your data is, #{params[:data]}!"
  end
  post '/json' do
    data = JSON.parse(request.body.read)
    puts "Application received JSON request from external source: #{data}"
    content_type :json
    'We received your request'.to_json
  end
  get '/params' do
  	# matches "GET /params?title=foo&author=bar"
  	title = params['title']
  	author = params['author']
  	# uses title and author variables; query is optional to the /posts route
  end
end