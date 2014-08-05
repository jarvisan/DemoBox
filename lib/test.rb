require 'pg'

def dbConnection
  c = PG.connect( dbname: 'dev' )
  c.prepare('state1', 'INSERT INTO userfiles (name, ex) values ($1, $2)')
  c.exec_prepared('state1', ['first', 'test'])
end
