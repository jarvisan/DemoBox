require 'sinatra'
require 'sinatra/activerecord'
require './lib/test'

set :database, {adapter: 'postgresql', database: 'test'}

get '/' do
  erb :index
end

get '/test' do
  dbConnection
end
