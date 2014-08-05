require 'sinatra'
require 'sinatra/activerecord'
require './lib/test'

class Userfile < ActiveRecord::Base
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/test' do
    dbConnection
    @userfiles = Userfile.all;;
    @userfiles.to_json
  end  
end
