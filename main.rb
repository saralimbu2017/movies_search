     
require 'sinatra'
require 'pry'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  erb(:index)
end

get '/movie' do
  @movie = HTTParty.get("http://www.omdbapi.com/?t=#{params["movie_name"]}&apikey=2f6435d9")
  erb(:movie) ##=> wraps everthing from the moive.erb template and returns as strings
end


get '/about' do
  erb(:about)  ##=> wraps everthing from the about.erb template and returns as strings
end

get '/movie_detail' do
  movie_result = HTTParty.get("http://www.omdbapi.com/?s=#{params["movie_name"]}&apikey=2f6435d9")
  @movies_list = movie_result["Search"]
  @movie =  @movies_list.first
  write_history(params["movie_name"])

    if @movies_list.length == 1 
      erb (:movie) ###=>  ##=> wraps everthing from the moive.erb template and returns as strings
  
  erb(:movie_detail)  ##=> wraps everthing from the moive_detail.erb template and returns as strings
end

get '/history' do
  erb(:history)  ##=> wraps everthing from the history.erb template and returns as strings
end

def write_history(movie_name)
  time_file_opened = Time.now
  file = File.open('history.txt','a+') do |file|
  file.puts "#{movie_name} was searched on  #{time_file_opened}"
  end
end







