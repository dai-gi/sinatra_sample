require "sinatra"
require "sinatra/reloader"
require "rubygems"
require "bundler"

Bundler.require

get '/' do
  erb :index
end

post '/create' do
  point = params[:point]
  comment = params[:comment]
  "ポイント :#{point}　コメント :#{comment}"
end

# please access this URL: http://localhost:4567