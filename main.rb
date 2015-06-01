# main.rb
require 'sinatra'
require 'json'
require 'debugger' # Use this by insert debugger anywhere in your code.

class Main < Sinatra::Base
  get '/' do
    "Hello, world!"
  end
  post '/:data' do
    "Your data is, #{params[:data]}!"
  end
  post '/json' do
    data = JSON.parse(request.body.read)
    puts "#{data}"
  end
  get '/params' do
  	# matches "GET /params?title=foo&author=bar"
  	title = params['title']
  	author = params['author']
  	# uses title and author variables; query is optional to the /posts route
  end
end