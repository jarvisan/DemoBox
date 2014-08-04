require 'sinatra'
require 'sinatra/activerecord'
require './lib/test'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/test' do
    dbConnection
  end  
end
