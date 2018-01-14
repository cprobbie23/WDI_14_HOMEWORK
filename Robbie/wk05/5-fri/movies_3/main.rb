     
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'
require 'pg'
require 'pry'

# @@imdbID_record = []

get '/' do
  # show search history
  conn = PG.connect(dbname: 'movie_db')
  sql = "SELECT * FROM movies;"
  @@movies = conn.exec(sql)
  conn.close
  erb :index
end

get '/search_results' do
  @movie_keyword = "#{params[:movie_name]}"
  result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&s=#{params[:movie_name]}")
  @@result_hash = result.parsed_response["Search"]

  if @@result_hash.count == 1
    result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&t=#{params[:movie_name]}")
    @@result_hash = result.parsed_response
    erb :show
  else    
    erb :search_results
  end
end

get '/show' do
  # if title exists, diplay from database
  # if not exists, insert movie into database

    # if @@imdbID_record.include?("#{params[:i]}")
    #   conn = PG.connect(dbname: 'movie_db')
    #   sql = "SELECT * FROM movies WHERE id = #{movie['id']};"
    #   @@result_hash = conn.exec(sql)
    #   conn.close()
    # else
      result = HTTParty.get("http://omdbapi.com/?apikey=2f6435d9&i=#{params[:i]}")
      @@result_hash = result.parsed_response     
    # end
    erb :show
  end
  

post '/movies' do
  conn = PG.connect(dbname: 'movie_db')
    # sql = "INSERT INTO movies (title, year) VALUES ('#{@@result_hash["Title"]}', '#{@@result_hash["Year"]}');"
  sql = "INSERT INTO movies (Title, imdbID, Year, Genre, Released, Runtime, Director, Actors, Language, Description, imdbRating, Poster) 
          VALUES ('#{@@result_hash["Title"]}', '#{@@result_hash["imdbID"]}', '#{@@result_hash["Year"]}', '#{@@result_hash["Genre"]}', '#{@@result_hash["Released"]}',
          '#{@@result_hash["Runtime"]}', '#{@@result_hash["Director"]}', '#{@@result_hash["Actors"]}', '#{@@result_hash["Language"]}',
          '#{@@result_hash["Description"]}', '#{@@result_hash["imdbRating"]}', '#{@@result_hash["Poster"]}');"
  @@result_hash = conn.exec(sql).first
  # @@imdbID_record << "#{@@result_hash["imdbID"]}"
  conn.close()
  redirect '/'
end

get '/movies/:id' do
  conn = PG.connect(dbname: 'movie_db')
  sql = "SELECT * FROM movies WHERE ID = #{params[:id]};"
  @@result_hash = conn.exec(sql).first
  conn.close()
  erb :show_old
end


