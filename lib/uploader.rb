require 'pg'

def dbUpload(files)
  c= PG.connect( dbname: 'dev' )
  c.prepare('state1', 'INSERT INTO userfiles (file, name, ex) values ($1, $2, $3)')
  #for file in files do
    c.exec_prepared('state1', [files[:tempfile], files[:filename], files[:type]])
  #end
end
