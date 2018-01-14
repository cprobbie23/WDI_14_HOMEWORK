     
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'


get '/' do
  # show search history
  # conn = PG.connect(dbname: 'movie_db')
  # sql = "SELECT title FROM movies LIMIT 10;"
  # @movies = conn.exec(sql)
  # conn.close
  erb :index
end

get '/search_results' do
  @movie_keyword = "#{params[:movie_name]}"
  result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&s=#{params[:movie_name]}")
  @result_hash = result.parsed_response["Search"]

  if @result_hash.count == 1
    result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie_name]}")
    @result_hash = result.parsed_response
    erb :movie
  else    
    erb :search_results
  end
end

get '/movie' do
  # if title exists, diplay from database
  # if not exists, insert movie into database
  # conn = PG.connect(dbname: 'movie_db')
  # sql = "SELECT * FROM movies WHERE imdbID = #{params[:i]};"
  # @result_hash = conn.exec(sql)

  # if @result_hash["title"] != nil
  #   erb :movie
  # else  
    result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&i=#{params[:i]}")
    @result_hash = result.parsed_response
    # conn = PG.connect(dbname: 'movie_db')
    erb :movie
  # end
end

