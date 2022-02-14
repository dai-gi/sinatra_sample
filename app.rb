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
  save_file(point: point, comment: comment)
  redirect '/'
end

def save_file(point:, comment:)
  post = "ポイント :#{point}　コメント :#{comment}"
  File.open("data.txt", "a") do |f|
    f.puts(post)
  end
end

# please access this URL: http://localhost:4567