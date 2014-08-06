require 'sinatra'
require 'sinatra/activerecord'
require './lib/uploader'
require './lib/test'

class Userfile < ActiveRecord::Base
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/upload' do
      erb :upload
  end

  get '/list' do
    erb :list
  end

  post '/uploaded' do
    dbUpload(params[:files])
    @userfiles = Userfile.all
    @userfiles.to_json
  end

  post '/test' do
    dbEntry(params[:name], params[:ex], params[:size])
    @userfiles = Userfile.all
    @userfiles.to_json
  end
end
