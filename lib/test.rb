require 'pg'

def dbConnection
  c = PG.connect( dbname: 'test' )
  c.exec("DROP TABLE IF EXISTS tester")
  c.exec("CREATE TABLE tester (nameOne char(10), nameTwo char(10));")
  c.exec("INSERT INTO tester VALUES ('first', 'second');")
  c.exec("INSERT INTO tester VALUES ('third', 'fourth');")



end
