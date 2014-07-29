require 'pg'

def dbEnter( name ){
  c = PG.connect( dbname: 'demobox')
  c.exec("INSERT INTO demobox VALUES (:name);")
}
