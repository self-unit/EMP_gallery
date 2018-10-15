require ('pg')

class SqlRunner

  def self.run(sql, values = [])
    begin
      # db = PG.connect({ dbname: 'gallery', host: 'localhost' })
      db = PG.connect( {dbname: 'dc541e3uel6roq', host: 'ec2-23-21-147-71.compute-1.amazonaws.com', port: 5432, user: 'lgyeaeowktbife', password: '3f592c5e64f08e93d7f8c59a2f94dd2c3dd74bd514ad10dfdd2fcf80c853b794'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end
