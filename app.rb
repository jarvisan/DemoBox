require 'sinatra'
require 'pg'

get '/' do
  erb :index
end

get '/test' do
  c = PG.connect( dbname: 'test')
  c.exec("DROP TABLE IF EXISTS tester")
  c.exec("CREATE TABLE tester (name char(50));")
  c.exec("INSERT INTO tester VALUES ('first');")
  c.exec("INSERT INTO tester VALUES ('second');")
end
