require 'pg'

def dbConnection
  c = PG.connect( dbname: 'dev' )
  c.prepare('state1', 'INSERT INTO userfiles (name, ex, size) values ($1, $2, $3)')
  c.exec_prepared('state1', ['first', 'test', 54.5])
end

def dbEntry(filename)
  c = PG.connect( dbname: 'dev' )
  c.prepare('state1', 'INSERT INTO userfiles (name) values ($1)')
  c.exec_prepared('state1', [filename])
end
