
require 'sinatra/reloader'     
require 'sinatra'
require 'httparty'

get '/' do
  erb :index
end

get '/movie' do
  file = File.open('search_history.txt', 'a')
  file.puts(params[:movie_name])
  file.close
  result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie_name]} ")
  @result_hash = result.parsed_response
  erb :movie
end

get '/about' do
  erb :about
end

get '/search_history' do
  file = File.readlines('search_history.txt')
  @list = file
  erb :search_history
end




