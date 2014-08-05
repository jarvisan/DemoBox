require 'pg'

def dbEntry(filename, fileex, filesize)
  c = PG.connect( dbname: 'dev' )
  c.prepare('state1', 'INSERT INTO userfiles (name, ex, size) values ($1, $2, $3)')
  c.exec_prepared('state1', [filename, fileex, filesize])
end
