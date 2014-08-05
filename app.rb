require 'sinatra'
require 'sinatra/activerecord'
require './lib/test'

class Userfile < ActiveRecord::Base
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/upload' do
    dbEntry(params[:name])
  end

  get '/test' do
    dbConnection
    @userfiles = Userfile.all;;
    @userfiles.to_json
  end  
end
